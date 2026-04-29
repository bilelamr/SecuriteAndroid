.class public Lcom/facebook/react/devsupport/DevServerHelper;
.super Ljava/lang/Object;
.source "DevServerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/DevServerHelper$BundleType;,
        Lcom/facebook/react/devsupport/DevServerHelper$SymbolicationListener;,
        Lcom/facebook/react/devsupport/DevServerHelper$PackagerCustomCommandProvider;,
        Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;,
        Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUGGER_MSG_DISABLE:Ljava/lang/String; = "{ \"id\":1,\"method\":\"Debugger.disable\" }"

.field private static final HTTP_CONNECT_TIMEOUT_MS:I = 0x1388

.field private static final LONG_POLL_FAILURE_DELAY_MS:I = 0x1388

.field private static final LONG_POLL_KEEP_ALIVE_DURATION_MS:I = 0x1d4c0

.field private static final PACKAGER_OK_STATUS:Ljava/lang/String; = "packager-status:running"

.field public static final RELOAD_APP_EXTRA_JS_PROXY:Ljava/lang/String; = "jsproxy"


# instance fields
.field private final mBundleDownloader:Lcom/facebook/react/devsupport/BundleDownloader;

.field private mBundlerStatusProvider:Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatusProvider;

.field private final mClient:Lokhttp3/OkHttpClient;

.field private mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

.field private mOnChangePollingClient:Lokhttp3/OkHttpClient;

.field private mOnChangePollingEnabled:Z

.field private mOnServerContentChangeListener:Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;

.field private final mPackageName:Ljava/lang/String;

.field private mPackagerClient:Lcom/facebook/react/packagerconnection/JSPackagerClient;

.field private final mRestartOnChangePollingHandler:Landroid/os/Handler;

.field private final mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;


# direct methods
.method public constructor <init>(Lcom/facebook/react/devsupport/DevInternalSettings;Ljava/lang/String;Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatusProvider;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 134
    iput-object p3, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mBundlerStatusProvider:Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatusProvider;

    .line 135
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1388

    .line 136
    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x0

    .line 137
    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 138
    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    .line 140
    new-instance p1, Lcom/facebook/react/devsupport/BundleDownloader;

    iget-object p3, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-direct {p1, p3}, Lcom/facebook/react/devsupport/BundleDownloader;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mBundleDownloader:Lcom/facebook/react/devsupport/BundleDownloader;

    .line 142
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mRestartOnChangePollingHandler:Landroid/os/Handler;

    .line 143
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/packagerconnection/JSPackagerClient;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mPackagerClient:Lcom/facebook/react/packagerconnection/JSPackagerClient;

    return-object p0
.end method

.method static synthetic access$002(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/packagerconnection/JSPackagerClient;)Lcom/facebook/react/packagerconnection/JSPackagerClient;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mPackagerClient:Lcom/facebook/react/packagerconnection/JSPackagerClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/DevInternalSettings;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/react/devsupport/DevServerHelper;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mRestartOnChangePollingHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/InspectorPackagerConnection;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    return-object p0
.end method

.method static synthetic access$202(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/devsupport/InspectorPackagerConnection;)Lcom/facebook/react/devsupport/InspectorPackagerConnection;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    return-object p1
.end method

.method static synthetic access$300(Lcom/facebook/react/devsupport/DevServerHelper;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getInspectorDeviceUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/react/devsupport/DevServerHelper;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatusProvider;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mBundlerStatusProvider:Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatusProvider;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/react/devsupport/DevServerHelper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/devsupport/DevServerHelper;->getInspectorAttachUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnServerContentChangeListener:Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/react/devsupport/DevServerHelper;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/facebook/react/devsupport/DevServerHelper;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->handleOnChangePollingResponse(Z)V

    return-void
.end method

.method private createBundleURL(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$BundleType;)Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 449
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->createBundleURL(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$BundleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createBundleURL(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$BundleType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 437
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p1, v1, p3

    .line 442
    invoke-virtual {p2}, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->typeID()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 443
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 444
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getJSMinifyMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    const-string p1, "http://%s/%s.%s?platform=android&dev=%s&minify=%s"

    .line 437
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createLaunchJSDevtoolsCommandUrl()Ljava/lang/String;
    .locals 4

    .line 602
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 605
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "http://%s/launch-js-devtools"

    .line 602
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createOnChangeEndpointUrl()Ljava/lang/String;
    .locals 4

    .line 595
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 598
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "http://%s/onchange"

    .line 595
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createOpenStackFrameURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 461
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "http://%s/open-stack-frame"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createPackagerStatusURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 522
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "http://%s/status"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createResourceURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 453
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "http://%s/%s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createSymbolicateURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 457
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "http://%s/symbolicate"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private enqueueOnChangeEndpointLongPolling()V
    .locals 2

    .line 567
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->createOnChangeEndpointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingClient:Lokhttp3/OkHttpClient;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/DevServerHelper$10;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevServerHelper$10;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private getDeltaClientType()Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isBundleDeltasCppEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    sget-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->NATIVE:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    return-object v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isBundleDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    sget-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->DEV_SUPPORT:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    return-object v0

    .line 403
    :cond_1
    sget-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->NONE:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    return-object v0
.end method

.method private getDevMode()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isJSDevModeEnabled()Z

    move-result v0

    return v0
.end method

.method private getHostForJSProxy()Ljava/lang/String;
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 413
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x3a

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const-string v2, "localhost"

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method private getInspectorAttachUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 372
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 375
    invoke-static {p1}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getServerHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    iget-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mPackageName:Ljava/lang/String;

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 378
    invoke-static {}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getFriendlyDeviceName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "http://%s/nuclide/attach-debugger-nuclide?title=%s&app=%s&device=%s"

    .line 372
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getInspectorDeviceUrl()Ljava/lang/String;
    .locals 4

    .line 363
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 366
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getInspectorServerHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 367
    invoke-static {}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getFriendlyDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "http://%s/inspector/device?name=%s&app=%s"

    .line 363
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getJSMinifyMode()Z
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isJSMinifyEnabled()Z

    move-result v0

    return v0
.end method

.method private handleOnChangePollingResponse(Z)V
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 553
    new-instance p1, Lcom/facebook/react/devsupport/DevServerHelper$9;

    invoke-direct {p1, p0}, Lcom/facebook/react/devsupport/DevServerHelper$9;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    invoke-static {p1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->enqueueOnChangeEndpointLongPolling()V

    :cond_1
    return-void
.end method


# virtual methods
.method public attachDebugger(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 257
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/devsupport/DevServerHelper$5;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 283
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public closeInspectorConnection()V
    .locals 3

    .line 244
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$4;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevServerHelper$4;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public closePackagerConnection()V
    .locals 3

    .line 206
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevServerHelper$2;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public disableDebugger()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    if-eqz v0, :cond_0

    const-string v1, "{ \"id\":1,\"method\":\"Debugger.disable\" }"

    .line 239
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->sendEventToAllConnections(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;)V
    .locals 6

    .line 384
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mBundleDownloader:Lcom/facebook/react/devsupport/BundleDownloader;

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getDeltaClientType()Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/devsupport/BundleDownloader;->downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)V

    return-void
.end method

.method public downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lokhttp3/Request$Builder;)V
    .locals 7

    .line 393
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mBundleDownloader:Lcom/facebook/react/devsupport/BundleDownloader;

    .line 394
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getDeltaClientType()Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 393
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/react/devsupport/BundleDownloader;->downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lokhttp3/Request$Builder;)V

    return-void
.end method

.method public downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 653
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-static {v0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->createResourceURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 656
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const/4 v1, 0x0

    .line 659
    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    .line 675
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v1

    .line 666
    :cond_1
    :try_start_3
    invoke-static {p2}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 667
    :try_start_4
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    invoke-interface {v3, v2}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    .line 670
    :try_start_5
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    if-eqz v0, :cond_3

    .line 675
    :try_start_6
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    return-object p2

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 670
    :try_start_7
    invoke-interface {v2}, Lokio/Sink;->close()V

    .line 672
    :cond_4
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    .line 659
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v3

    if-eqz v0, :cond_5

    .line 675
    :try_start_9
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 680
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object v0, v2, p1

    const-string p1, "ReactNative"

    const-string p2, "Failed to fetch resource synchronously - resourcePath: \"%s\", outputFile: \"%s\""

    .line 676
    invoke-static {p1, p2, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public getDevServerBundleURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 467
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isBundleDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->DELTA:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->BUNDLE:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    :goto_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 468
    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->createBundleURL(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$BundleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getJSBundleURLForRemoteDebugging(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 639
    sget-object v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->BUNDLE:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    .line 640
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getHostForJSProxy()Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->createBundleURL(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$BundleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSourceMapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 627
    sget-object v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->MAP:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->createBundleURL(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$BundleType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSourceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 632
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isBundleDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->DELTA:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->BUNDLE:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    .line 631
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->createBundleURL(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$BundleType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebsocketProxyURL()Ljava/lang/String;
    .locals 4

    .line 356
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 359
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ws://%s/debugger-proxy?role=client"

    .line 356
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 474
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->createPackagerStatusURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 476
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/DevServerHelper$8;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper$8;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public launchJSDevtools()V
    .locals 2

    .line 609
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 610
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->createLaunchJSDevtoolsCommandUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/DevServerHelper$11;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevServerHelper$11;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public openInspectorConnection()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    if-eqz v0, :cond_0

    const-string v0, "ReactNative"

    const-string v1, "Inspector connection already open, nooping."

    .line 220
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 223
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$3;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevServerHelper$3;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public openPackagerConnection(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mPackagerClient:Lcom/facebook/react/packagerconnection/JSPackagerClient;

    if-eqz v0, :cond_0

    const-string p1, "ReactNative"

    const-string p2, "Packager connection already open, nooping."

    .line 149
    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/react/devsupport/DevServerHelper$1;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 202
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public openStackFrameCall(Lcom/facebook/react/devsupport/interfaces/StackFrame;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 332
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->createOpenStackFrameURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 334
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "application/json"

    .line 336
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 337
    invoke-interface {p1}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 339
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lokhttp3/Call;

    .line 340
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$7;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevServerHelper$7;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public startPollingOnChangeEndpoint(Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;)V
    .locals 5

    .line 537
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingEnabled:Z

    .line 542
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnServerContentChangeListener:Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;

    .line 543
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lokhttp3/ConnectionPool;

    const-wide/32 v2, 0x1d4c0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v0, v2, v3, v4}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 544
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 545
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingClient:Lokhttp3/OkHttpClient;

    .line 547
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->enqueueOnChangeEndpointLongPolling()V

    return-void
.end method

.method public stopPollingOnChangeEndpoint()V
    .locals 2

    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingEnabled:Z

    .line 527
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mRestartOnChangePollingHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingClient:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    .line 529
    invoke-static {v0, p0}, Lcom/facebook/react/common/network/OkHttpCallUtil;->cancelTag(Lokhttp3/OkHttpClient;Ljava/lang/Object;)V

    .line 530
    iput-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingClient:Lokhttp3/OkHttpClient;

    .line 532
    :cond_0
    iput-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnServerContentChangeListener:Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;

    return-void
.end method

.method public symbolicateStackTrace(Ljava/lang/Iterable;Lcom/facebook/react/devsupport/DevServerHelper$SymbolicationListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
            ">;",
            "Lcom/facebook/react/devsupport/DevServerHelper$SymbolicationListener;",
            ")V"
        }
    .end annotation

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 291
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->createSymbolicateURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 293
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 294
    invoke-interface {v2}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 296
    :cond_0
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 297
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "application/json"

    .line 299
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "stack"

    .line 300
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 302
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lokhttp3/Call;

    .line 303
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$6;

    invoke-direct {v0, p0, p2}, Lcom/facebook/react/devsupport/DevServerHelper$6;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/devsupport/DevServerHelper$SymbolicationListener;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 324
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got JSONException when attempting symbolicate stack trace: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReactNative"

    .line 324
    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
