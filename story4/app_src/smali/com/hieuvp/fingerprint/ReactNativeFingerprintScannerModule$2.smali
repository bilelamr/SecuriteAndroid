.class Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;
.super Ljava/lang/Object;
.source "ReactNativeFingerprintScannerModule.java"

# interfaces
.implements Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->authenticate(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    iput-object p2, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Z)V
    .locals 2

    const-string v0, "AuthenticationFailed"

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "DeviceLocked"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "Fingerprint"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    iget-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    invoke-virtual {p1}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->release()V

    return-void
.end method

.method public onNotMatch(I)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    invoke-static {p1}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->access$000(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v0, "FINGERPRINT_SCANNER_AUTHENTICATION"

    const-string v1, "AuthenticationNotMatch"

    .line 97
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartFailedByDeviceLocked()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "AuthenticationFailed"

    const-string v2, "DeviceLocked"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSucceed()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    invoke-virtual {v0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->release()V

    return-void
.end method
