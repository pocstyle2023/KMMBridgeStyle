Pod::Spec.new do |spec|
    spec.name                     = 'KMMBridge-KickStart'
    spec.version                  = '1.0.4'
    spec.homepage                 = 'https://www.touchlab.co'
    spec.source                   = { :http=> ''}
    spec.authors                  = ''
    spec.license                  = ''
    spec.summary                  = 'KMMBridgeKickStart sample'
    spec.vendored_frameworks      = 'build/cocoapods/framework/KMMBridgeKickStart.framework'
                
    spec.ios.deployment_target = '13.5'
                
                
    spec.pod_target_xcconfig = {
        'KOTLIN_PROJECT_PATH' => ':allshared',
        'PRODUCT_MODULE_NAME' => 'KMMBridgeKickStart',
    }
                
    spec.script_phases = [
        {
            :name => 'Build KMMBridge-KickStart',
            :execution_position => :before_compile,
            :shell_path => '/bin/sh',
            :script => <<-SCRIPT
                if [ "YES" = "$OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED" ]; then
                  echo "Skipping Gradle build task invocation due to OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED environment variable set to \"YES\""
                  exit 0
                fi
                set -ev
                REPO_ROOT="$PODS_TARGET_SRCROOT"
                "$REPO_ROOT/../../../../../private/var/folders/4r/4p1sjpm51yv_hd0pwtlm4xsc0000gn/T/wrap8loc/gradlew" -p "$REPO_ROOT" $KOTLIN_PROJECT_PATH:syncFramework \
                    -Pkotlin.native.cocoapods.platform=$PLATFORM_NAME \
                    -Pkotlin.native.cocoapods.archs="$ARCHS" \
                    -Pkotlin.native.cocoapods.configuration="$CONFIGURATION"
            SCRIPT
        }
    ]
    spec.libraries = 'c++', 'sqlite3'
end