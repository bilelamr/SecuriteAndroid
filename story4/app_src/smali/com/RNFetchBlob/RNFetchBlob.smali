.class public Lcom/RNFetchBlob/RNFetchBlob;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNFetchBlob.java"


# static fields
.field private static ActionViewVisible:Z

.field static RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field static fsTaskQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static fsThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static promiseTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/bridge/Promise;",
            ">;"
        }
    .end annotation
.end field

.field private static taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final mClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 44
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlob;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 45
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/RNFetchBlob/RNFetchBlob;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x5

    const/16 v3, 0xa

    const-wide/16 v4, 0x1388

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlob;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlob;->fsTaskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/RNFetchBlob/RNFetchBlob;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlob;->fsThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/RNFetchBlob/RNFetchBlob;->ActionViewVisible:Z

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlob;->promiseTable:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 55
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/RNFetchBlob/RNFetchBlob;->mClient:Lokhttp3/OkHttpClient;

    .line 56
    new-instance v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 57
    iget-object v1, p0, Lcom/RNFetchBlob/RNFetchBlob;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/network/CookieJarContainer;

    .line 58
    new-instance v2, Lokhttp3/JavaNetCookieJar;

    invoke-direct {v2, v0}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    invoke-interface {v1, v2}, Lcom/facebook/react/modules/network/CookieJarContainer;->setCookieJar(Lokhttp3/CookieJar;)V

    .line 60
    sput-object p1, Lcom/RNFetchBlob/RNFetchBlob;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 61
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlob$1;

    invoke-direct {v0, p0}, Lcom/RNFetchBlob/RNFetchBlob$1;-><init>(Lcom/RNFetchBlob/RNFetchBlob;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .line 39
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlob;->promiseTable:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/RNFetchBlob/RNFetchBlob;->ActionViewVisible:Z

    return v0
.end method


# virtual methods
.method public actionViewIntent(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x18

    const/4 v3, 0x1

    const-string v4, "android.intent.action.VIEW"

    const/high16 v5, 0x10000000

    if-lt v1, v2, :cond_0

    .line 116
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 138
    :cond_1
    :goto_0
    sput-boolean v3, Lcom/RNFetchBlob/RNFetchBlob;->ActionViewVisible:Z

    .line 140
    new-instance p1, Lcom/RNFetchBlob/RNFetchBlob$4;

    invoke-direct {p1, p0, p3}, Lcom/RNFetchBlob/RNFetchBlob$4;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Lcom/facebook/react/bridge/Promise;)V

    .line 158
    sget-object p2, Lcom/RNFetchBlob/RNFetchBlob;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p2, p1}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EUNSPECIFIED"

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public addCompleteDownload(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 16
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "showNotification"

    const-string v3, "mime"

    const-string v4, "description"

    const-string v5, "title"

    .line 377
    sget-object v6, Lcom/RNFetchBlob/RNFetchBlob;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v7, "download"

    invoke-virtual {v6, v7}, Lcom/facebook/react/bridge/ReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/app/DownloadManager;

    const-string v6, "EINVAL"

    if-eqz v0, :cond_6

    const-string v8, "path"

    .line 378
    invoke-interface {v0, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_4

    .line 383
    :cond_0
    invoke-interface {v0, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/RNFetchBlob/RNFetchBlobFS;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RNFetchblob.addCompleteDownload can not resolve URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 389
    :cond_1
    :try_start_0
    invoke-static {v12}, Lcom/RNFetchBlob/RNFetchBlobFS;->statFile(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 391
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, ""

    if-eqz v8, :cond_2

    :try_start_1
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_0

    :cond_2
    move-object v8, v9

    .line 392
    :goto_0
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    :cond_3
    const/4 v10, 0x1

    .line 394
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    :cond_4
    move-object v11, v5

    :goto_1
    const-string v3, "size"

    .line 396
    invoke-interface {v6, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 397
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/4 v15, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const/4 v15, 0x0

    .line 390
    :goto_2
    invoke-virtual/range {v7 .. v15}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 399
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EUNSPECIFIED"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_6
    :goto_4
    const-string v0, "RNFetchblob.addCompleteDownload config or path missing."

    .line 380
    invoke-interface {v1, v6, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancelRequest(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 318
    :try_start_0
    invoke-static {p1}, Lcom/RNFetchBlob/RNFetchBlobReq;->cancelTask(Ljava/lang/String;)V

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p1, v4, v1

    .line 319
    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v3, v3, [Ljava/lang/Object;

    .line 321
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public closeStream(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 216
    invoke-static {p1, p2}, Lcom/RNFetchBlob/RNFetchBlobFS;->closeStream(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public cp(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 186
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlob;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/RNFetchBlob/RNFetchBlob$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/RNFetchBlob/RNFetchBlob$5;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 90
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlob;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/RNFetchBlob/RNFetchBlob$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/RNFetchBlob/RNFetchBlob$2;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createFileASCII(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 100
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlob;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/RNFetchBlob/RNFetchBlob$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/RNFetchBlob/RNFetchBlob$3;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public df(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 338
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlob;->fsThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/RNFetchBlob/RNFetchBlob$12;

    invoke-direct {v1, p0, p1}, Lcom/RNFetchBlob/RNFetchBlob$12;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableProgressReport(Ljava/lang/String;II)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 332
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;->Download:Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2, p3, v1}, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;-><init>(ZIILcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;)V

    .line 333
    sget-object p2, Lcom/RNFetchBlob/RNFetchBlobReq;->progressReport:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enableUploadProgressReport(Ljava/lang/String;II)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 349
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;->Upload:Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2, p3, v1}, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;-><init>(ZIILcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;)V

    .line 350
    sget-object p2, Lcom/RNFetchBlob/RNFetchBlobReq;->uploadProgressReport:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public exists(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 181
    invoke-static {p1, p2}, Lcom/RNFetchBlob/RNFetchBlobFS;->exists(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public fetchBlob(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 12
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 355
    new-instance v10, Lcom/RNFetchBlob/RNFetchBlobReq;

    move-object v11, p0

    iget-object v8, v11, Lcom/RNFetchBlob/RNFetchBlob;->mClient:Lokhttp3/OkHttpClient;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/RNFetchBlob/RNFetchBlobReq;-><init>(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lokhttp3/OkHttpClient;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v10}, Lcom/RNFetchBlob/RNFetchBlobReq;->run()V

    return-void
.end method

.method public fetchBlobForm(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 12
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 360
    new-instance v10, Lcom/RNFetchBlob/RNFetchBlobReq;

    move-object v11, p0

    iget-object v8, v11, Lcom/RNFetchBlob/RNFetchBlob;->mClient:Lokhttp3/OkHttpClient;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/RNFetchBlob/RNFetchBlobReq;-><init>(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lokhttp3/OkHttpClient;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v10}, Lcom/RNFetchBlob/RNFetchBlobReq;->run()V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/RNFetchBlob/RNFetchBlobFS;->getSystemfolders(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContentIntent(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 365
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "*/*"

    .line 369
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    :goto_0
    sget-object p1, Lcom/RNFetchBlob/RNFetchBlob;->promiseTable:Landroid/util/SparseArray;

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobConst;->GET_CONTENT_INTENT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    sget-object p2, Lcom/RNFetchBlob/RNFetchBlobConst;->GET_CONTENT_INTENT:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/facebook/react/bridge/ReactContext;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNFetchBlob"

    return-object v0
.end method

.method public getSDCardApplicationDir(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/RNFetchBlob/RNFetchBlobFS;->getSDCardApplicationDir(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getSDCardDir(Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 409
    invoke-static {p1}, Lcom/RNFetchBlob/RNFetchBlobFS;->getSDCardDir(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public hash(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 290
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlob;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/RNFetchBlob/RNFetchBlob$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/RNFetchBlob/RNFetchBlob$10;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ls(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 201
    invoke-static {p1, p2}, Lcom/RNFetchBlob/RNFetchBlobFS;->ls(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public lstat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 256
    invoke-static {p1, p2}, Lcom/RNFetchBlob/RNFetchBlobFS;->lstat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public mkdir(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 176
    invoke-static {p1, p2}, Lcom/RNFetchBlob/RNFetchBlobFS;->mkdir(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public mv(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 196
    invoke-static {p1, p2, p3}, Lcom/RNFetchBlob/RNFetchBlobFS;->mv(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public readFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 226
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlob;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/RNFetchBlob/RNFetchBlob$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/RNFetchBlob/RNFetchBlob$6;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    .line 306
    sget-object v8, Lcom/RNFetchBlob/RNFetchBlob;->fsThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/RNFetchBlob/RNFetchBlob$11;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/RNFetchBlob/RNFetchBlob$11;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSession(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 221
    invoke-static {p1, p2}, Lcom/RNFetchBlob/RNFetchBlobFS;->removeSession(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public scanFile(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 267
    sget-object v1, Lcom/RNFetchBlob/RNFetchBlob;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/RNFetchBlob/RNFetchBlob$9;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/RNFetchBlob/RNFetchBlob$9;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public slice(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v4, ""

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    .line 327
    invoke-static/range {v0 .. v5}, Lcom/RNFetchBlob/RNFetchBlobFS;->slice(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public stat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 261
    invoke-static {p1, p2}, Lcom/RNFetchBlob/RNFetchBlobFS;->stat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public unlink(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 171
    invoke-static {p1, p2}, Lcom/RNFetchBlob/RNFetchBlobFS;->unlink(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeArrayChunk(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 166
    invoke-static {p1, p2, p3}, Lcom/RNFetchBlob/RNFetchBlobFS;->writeArrayChunk(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeChunk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 211
    invoke-static {p1, p2, p3}, Lcom/RNFetchBlob/RNFetchBlobFS;->writeChunk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 246
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlob;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/RNFetchBlob/RNFetchBlob$8;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/RNFetchBlob/RNFetchBlob$8;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public writeFileArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 236
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlob;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/RNFetchBlob/RNFetchBlob$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/RNFetchBlob/RNFetchBlob$7;-><init>(Lcom/RNFetchBlob/RNFetchBlob;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public writeStream(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 206
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobFS;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/RNFetchBlob/RNFetchBlobFS;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/RNFetchBlob/RNFetchBlobFS;->writeStream(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V

    return-void
.end method
