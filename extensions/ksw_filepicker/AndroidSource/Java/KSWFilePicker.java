package ${YYAndroidPackageName};

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

public class KSWFilePicker extends ExtensionBase
{
	private static final int EVENT_OTHER_SOCIAL = 70;
	private static final int KSW_SAVE_REQUEST = 50071;
	private static final int KSW_OPEN_REQUEST = 50072;

	private String pendingSourcePath = "";
	private String pendingDestPath = "";

	public double ShowSavePicker(String sourcePath, String suggestedName)
	{
		pendingSourcePath = sourcePath;

		try
		{
			Intent intent = new Intent(Intent.ACTION_CREATE_DOCUMENT);
			intent.addCategory(Intent.CATEGORY_OPENABLE);
			intent.setType("application/octet-stream");
			intent.putExtra(Intent.EXTRA_TITLE, suggestedName);
			RunnerActivity.CurrentActivity.startActivityForResult(intent, KSW_SAVE_REQUEST);
			return 1.0;
		}
		catch (Exception e)
		{
			Log.e("yoyo", "KSWFilePicker save picker failed: " + e);
			return 0.0;
		}
	}

	public double ShowOpenPicker(String destPath)
	{
		pendingDestPath = destPath;

		try
		{
			Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
			intent.addCategory(Intent.CATEGORY_OPENABLE);
			intent.setType("*/*");
			RunnerActivity.CurrentActivity.startActivityForResult(intent, KSW_OPEN_REQUEST);
			return 1.0;
		}
		catch (Exception e)
		{
			Log.e("yoyo", "KSWFilePicker open picker failed: " + e);
			return 0.0;
		}
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data)
	{
		if (requestCode == KSW_SAVE_REQUEST)
		{
			final Uri uri = (resultCode == Activity.RESULT_OK && data != null) ? data.getData() : null;
			final String sourcePath = pendingSourcePath;

			new Thread(new Runnable()
			{
				public void run()
				{
					boolean success = false;
					String message = "cancelled";

					if (uri != null)
					{
						InputStream in = null;
						OutputStream out = null;

						try
						{
							in = new FileInputStream(sourcePath);
							out = RunnerActivity.CurrentActivity.getContentResolver().openOutputStream(uri);

							byte[] buffer = new byte[8192];
							int length;
							while ((length = in.read(buffer)) > 0) out.write(buffer, 0, length);
							out.flush();

							success = true;
							message = "";
						}
						catch (Exception e)
						{
							message = e.toString();
							Log.e("yoyo", "KSWFilePicker save failed: " + e);
						}
						finally
						{
							try { if (in != null) in.close(); } catch (Exception e) {}
							try { if (out != null) out.close(); } catch (Exception e) {}
						}
					}

					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
					RunnerJNILib.DsMapAddString(dsMapIndex, "type", "ksw_filepicker_save");
					RunnerJNILib.DsMapAddDouble(dsMapIndex, "success", success ? 1.0 : 0.0);
					RunnerJNILib.DsMapAddString(dsMapIndex, "message", message);
					RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
				}
			}).start();
		}
		else if (requestCode == KSW_OPEN_REQUEST)
		{
			final Uri uri = (resultCode == Activity.RESULT_OK && data != null) ? data.getData() : null;
			final String destPath = pendingDestPath;

			new Thread(new Runnable()
			{
				public void run()
				{
					boolean success = false;
					String message = "cancelled";

					if (uri != null)
					{
						InputStream in = null;
						OutputStream out = null;

						try
						{
							in = RunnerActivity.CurrentActivity.getContentResolver().openInputStream(uri);
							out = new FileOutputStream(destPath);

							byte[] buffer = new byte[8192];
							int length;
							while ((length = in.read(buffer)) > 0) out.write(buffer, 0, length);
							out.flush();

							success = true;
							message = "";
						}
						catch (Exception e)
						{
							message = e.toString();
							Log.e("yoyo", "KSWFilePicker open failed: " + e);
						}
						finally
						{
							try { if (in != null) in.close(); } catch (Exception e) {}
							try { if (out != null) out.close(); } catch (Exception e) {}
						}
					}

					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
					RunnerJNILib.DsMapAddString(dsMapIndex, "type", "ksw_filepicker_open");
					RunnerJNILib.DsMapAddDouble(dsMapIndex, "success", success ? 1.0 : 0.0);
					RunnerJNILib.DsMapAddString(dsMapIndex, "path", success ? destPath : "");
					RunnerJNILib.DsMapAddString(dsMapIndex, "message", message);
					RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
				}
			}).start();
		}
	}
}
