package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.camera.CameraPlugin;
import io.flutter.plugins.firebasemlvision.FirebaseMlVisionPlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import com.tfliteflutter.tflite_flutter_plugin.TfliteFlutterPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    CameraPlugin.registerWith(registry.registrarFor("io.flutter.plugins.camera.CameraPlugin"));
    FirebaseMlVisionPlugin.registerWith(registry.registrarFor("io.flutter.plugins.firebasemlvision.FirebaseMlVisionPlugin"));
    PathProviderPlugin.registerWith(registry.registrarFor("io.flutter.plugins.pathprovider.PathProviderPlugin"));
    TfliteFlutterPlugin.registerWith(registry.registrarFor("com.tfliteflutter.tflite_flutter_plugin.TfliteFlutterPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
