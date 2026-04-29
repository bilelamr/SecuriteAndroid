.class public Lcom/pushwoosh/internal/platform/utils/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/platform/utils/a$d;,
        Lcom/pushwoosh/internal/platform/utils/a$b;,
        Lcom/pushwoosh/internal/platform/utils/a$e;,
        Lcom/pushwoosh/internal/platform/utils/a$a;,
        Lcom/pushwoosh/internal/platform/utils/a$c;,
        Lcom/pushwoosh/internal/platform/utils/a$f;
    }
.end annotation


# static fields
.field private static a:Lcom/pushwoosh/internal/platform/utils/a$f;

.field private static b:Lcom/pushwoosh/internal/platform/utils/a$f;

.field private static c:Lcom/pushwoosh/internal/platform/utils/a$f;

.field private static d:Lcom/pushwoosh/internal/platform/utils/a$f;

.field private static e:Lcom/pushwoosh/internal/platform/utils/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$c;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a;->a:Lcom/pushwoosh/internal/platform/utils/a$f;

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/a$a;

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$a;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a;->b:Lcom/pushwoosh/internal/platform/utils/a$f;

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/a$e;

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$e;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a;->c:Lcom/pushwoosh/internal/platform/utils/a$f;

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/a$b;

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$b;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a;->d:Lcom/pushwoosh/internal/platform/utils/a$f;

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/a$d;

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$d;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a;->e:Lcom/pushwoosh/internal/platform/utils/a$f;

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method static a()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$c;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a;->a:Lcom/pushwoosh/internal/platform/utils/a$f;

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/a$a;

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$a;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a;->b:Lcom/pushwoosh/internal/platform/utils/a$f;

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/a$e;

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$e;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a;->c:Lcom/pushwoosh/internal/platform/utils/a$f;

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/a$b;

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$b;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a;->d:Lcom/pushwoosh/internal/platform/utils/a$f;

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/a$d;

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$d;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a;->e:Lcom/pushwoosh/internal/platform/utils/a$f;

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a;->b:Lcom/pushwoosh/internal/platform/utils/a$f;

    sget-object v1, Lcom/pushwoosh/internal/platform/utils/a;->c:Lcom/pushwoosh/internal/platform/utils/a$f;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$f;->a(Lcom/pushwoosh/internal/platform/utils/a$f;)V

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a;->c:Lcom/pushwoosh/internal/platform/utils/a$f;

    sget-object v1, Lcom/pushwoosh/internal/platform/utils/a;->a:Lcom/pushwoosh/internal/platform/utils/a$f;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$f;->a(Lcom/pushwoosh/internal/platform/utils/a$f;)V

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a;->a:Lcom/pushwoosh/internal/platform/utils/a$f;

    sget-object v1, Lcom/pushwoosh/internal/platform/utils/a;->d:Lcom/pushwoosh/internal/platform/utils/a$f;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$f;->a(Lcom/pushwoosh/internal/platform/utils/a$f;)V

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a;->e:Lcom/pushwoosh/internal/platform/utils/a$f;

    sget-object v1, Lcom/pushwoosh/internal/platform/utils/a;->d:Lcom/pushwoosh/internal/platform/utils/a$f;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/platform/utils/a$f;->a(Lcom/pushwoosh/internal/platform/utils/a$f;)V

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/platform/utils/f;)V
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a;->e:Lcom/pushwoosh/internal/platform/utils/a$f;

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/platform/utils/a$f;->a(Lcom/pushwoosh/internal/platform/utils/f;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a;->e:Lcom/pushwoosh/internal/platform/utils/a$f;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/platform/utils/a$f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->deviceId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a;->b:Lcom/pushwoosh/internal/platform/utils/a$f;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/platform/utils/a$f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getResourceProvider()Lcom/pushwoosh/internal/platform/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/platform/d/b;->a()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()F
    .locals 5

    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getReceiverProvider()Lcom/pushwoosh/internal/platform/c/b;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/pushwoosh/internal/platform/c/b;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "scale"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static g()J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    const-wide/32 v0, 0x100000

    div-long/2addr v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static h()J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    const-wide/32 v0, 0x100000

    div-long/2addr v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static i()J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    const-wide/32 v0, 0x100000

    div-long/2addr v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static j()J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    const-wide/32 v0, 0x100000

    div-long/2addr v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static k()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/pushwoosh/internal/platform/b/b;->d()Landroid/view/WindowManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static l()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/pushwoosh/internal/platform/b/b;->d()Landroid/view/WindowManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getAppInfoProvider()Lcom/pushwoosh/internal/platform/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/platform/a/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getAppInfoProvider()Lcom/pushwoosh/internal/platform/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/pushwoosh/internal/platform/a/a;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/pushwoosh/internal/platform/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/pushwoosh/internal/platform/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()Z
    .locals 6

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/platform/b/b;->h()Landroid/app/KeyguardManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/platform/b/b;->g()Landroid/os/PowerManager;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/platform/b/b;->i()Landroid/app/ActivityManager;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getAppInfoProvider()Lcom/pushwoosh/internal/platform/a/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/pushwoosh/internal/platform/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_7

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_8
    return v1
.end method

.method public static q()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "undefined"

    return-object v0

    :catch_1
    const-string v0, "not_installed"

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static s()Z
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static t()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    const-string v3, "/system/xbin/which"

    const-string v4, "su"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_1
    return v0

    :catchall_0
    nop

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_2
    return v0
.end method

.method private static u()Z
    .locals 7

    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    const-string v6, "su"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
