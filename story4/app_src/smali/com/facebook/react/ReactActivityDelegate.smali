.class public Lcom/facebook/react/ReactActivityDelegate;
.super Ljava/lang/Object;
.source "ReactActivityDelegate.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDoubleTapReloadRecognizer:Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

.field private final mMainComponentName:Ljava/lang/String;

.field private mPermissionListener:Lcom/facebook/react/modules/core/PermissionListener;

.field private mPermissionsCallback:Lcom/facebook/react/bridge/Callback;

.field private mReactRootView:Lcom/facebook/react/ReactRootView;


# direct methods
.method public constructor <init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/react/ReactActivityDelegate;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/facebook/react/ReactActivityDelegate;->mMainComponentName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/ReactActivityDelegate;)Lcom/facebook/react/modules/core/PermissionListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/ReactActivityDelegate;->mPermissionListener:Lcom/facebook/react/modules/core/PermissionListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/facebook/react/ReactActivityDelegate;Lcom/facebook/react/modules/core/PermissionListener;)Lcom/facebook/react/modules/core/PermissionListener;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/facebook/react/ReactActivityDelegate;->mPermissionListener:Lcom/facebook/react/modules/core/PermissionListener;

    return-object p1
.end method


# virtual methods
.method protected createRootView()Lcom/facebook/react/ReactRootView;
    .locals 2

    .line 55
    new-instance v0, Lcom/facebook/react/ReactRootView;

    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/ReactRootView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected getLaunchOptions()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainComponentName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mMainComponentName:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlainActivity()Landroid/app/Activity;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    return-object v0
.end method

.method protected loadApp(Ljava/lang/String;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mReactRootView:Lcom/facebook/react/ReactRootView;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->createRootView()Lcom/facebook/react/ReactRootView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mReactRootView:Lcom/facebook/react/ReactRootView;

    .line 90
    iget-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mReactRootView:Lcom/facebook/react/ReactRootView;

    .line 91
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v1, p1, v2}, Lcom/facebook/react/ReactRootView;->startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mReactRootView:Lcom/facebook/react/ReactRootView;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot loadApp while app is already running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/react/ReactInstanceManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getMainComponentName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/facebook/react/ReactActivityDelegate;->loadApp(Ljava/lang/String;)V

    .line 82
    :cond_0
    new-instance p1, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

    invoke-direct {p1}, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/ReactActivityDelegate;->mDoubleTapReloadRecognizer:Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mReactRootView:Lcom/facebook/react/ReactRootView;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->unmountReactApplication()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mReactRootView:Lcom/facebook/react/ReactRootView;

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->onHostDestroy(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getUseDeveloperSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    .line 137
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/react/ReactNativeHost;->getUseDeveloperSupport()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x5a

    if-ne p1, p2, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->showDevOptionsDialog()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/react/ReactNativeHost;->getUseDeveloperSupport()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x52

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->showDevOptionsDialog()V

    return v0

    .line 149
    :cond_0
    iget-object p2, p0, Lcom/facebook/react/ReactActivityDelegate;->mDoubleTapReloadRecognizer:Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

    invoke-static {p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

    .line 150
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;->didDoubleTapR(ILandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleReloadJS()V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/ReactInstanceManager;->onNewIntent(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->onHostPause(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 198
    new-instance v0, Lcom/facebook/react/ReactActivityDelegate$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/react/ReactActivityDelegate$1;-><init>(Lcom/facebook/react/ReactActivityDelegate;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mPermissionsCallback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/ReactInstanceManager;->onHostResume(Landroid/app/Activity;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mPermissionsCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 111
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/facebook/react/ReactActivityDelegate;->mPermissionsCallback:Lcom/facebook/react/bridge/Callback;

    :cond_1
    return-void
.end method

.method public requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 190
    iput-object p3, p0, Lcom/facebook/react/ReactActivityDelegate;->mPermissionListener:Lcom/facebook/react/modules/core/PermissionListener;

    .line 191
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
