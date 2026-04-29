.class public Lcom/pushwoosh/internal/network/NetworkModule;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/pushwoosh/internal/network/RequestManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/pushwoosh/internal/network/NetworkModule$1;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/network/NetworkModule$1;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/network/NetworkModule;->a:Lcom/pushwoosh/internal/network/RequestManager;

    return-object v0
.end method

.method public static init(Lcom/pushwoosh/repository/RegistrationPrefs;)V
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/network/NetworkModule;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/pushwoosh/internal/network/e;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/network/e;-><init>(Lcom/pushwoosh/repository/RegistrationPrefs;)V

    sput-object v0, Lcom/pushwoosh/internal/network/NetworkModule;->a:Lcom/pushwoosh/internal/network/RequestManager;

    :cond_0
    return-void
.end method

.method public static setRequestManager(Lcom/pushwoosh/internal/network/RequestManager;)V
    .locals 0

    sput-object p0, Lcom/pushwoosh/internal/network/NetworkModule;->a:Lcom/pushwoosh/internal/network/RequestManager;

    return-void
.end method
