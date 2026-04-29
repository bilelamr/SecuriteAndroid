.class Lcom/pushwoosh/internal/registrar/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/registrar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/pushwoosh/repository/RegistrationPrefs;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/internal/registrar/a$a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/internal/registrar/a$a;->b:Lcom/pushwoosh/repository/RegistrationPrefs;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/internal/registrar/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/registrar/a$a;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.google.android.c2dm.permission.RECEIVE"

    const/16 v1, 0x1000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Application does not define permission com.google.android.c2dm.permission.RECEIVE"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a()V
    .locals 3

    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    const-string v1, "DATA_REGISTER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lcom/pushwoosh/internal/registrar/RegistrarWorker;

    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-static {}, Lcom/pushwoosh/PushwooshWorkManagerHelper;->getNetworkAvailableConstraints()Landroidx/work/Constraints;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    sget-object v1, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    const-string v2, "RegistrarWorker"

    invoke-static {v0, v2, v1}, Lcom/pushwoosh/PushwooshWorkManagerHelper;->enqueueOneTimeUniqueWork(Landroidx/work/OneTimeWorkRequest;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/internal/registrar/a$a;->b:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->projectId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAppId"

    invoke-static {p1, v1}, Lcom/pushwoosh/internal/platform/utils/GeneralUtils;->checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mSenderId"

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/platform/utils/GeneralUtils;->checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pushwoosh/internal/registrar/a$a;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "Incorrect state of app. Context is null"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/pushwoosh/internal/registrar/a$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method b()V
    .locals 3

    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    const-string v1, "DATA_UNREGISTER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lcom/pushwoosh/internal/registrar/RegistrarWorker;

    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-static {}, Lcom/pushwoosh/PushwooshWorkManagerHelper;->getNetworkAvailableConstraints()Landroidx/work/Constraints;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    sget-object v1, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    const-string v2, "RegistrarWorker"

    invoke-static {v0, v2, v1}, Lcom/pushwoosh/PushwooshWorkManagerHelper;->enqueueOneTimeUniqueWork(Landroidx/work/OneTimeWorkRequest;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)V

    return-void
.end method
