.class public final Lcom/pushwoosh/internal/utils/PWLog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/utils/PWLog$LogsUpdateListener;,
        Lcom/pushwoosh/internal/utils/PWLog$Level;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static a:Z = false

.field private static b:Lcom/pushwoosh/internal/utils/PWLog$Level;

.field private static c:Lcom/pushwoosh/internal/utils/PWLog$LogsUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->DEBUG:Lcom/pushwoosh/internal/utils/PWLog$Level;

    sput-object v0, Lcom/pushwoosh/internal/utils/PWLog;->b:Lcom/pushwoosh/internal/utils/PWLog$Level;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static a(Lcom/pushwoosh/internal/utils/PWLog$Level;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog;->c:Lcom/pushwoosh/internal/utils/PWLog$LogsUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog$LogsUpdateListener;->logUpdated(Lcom/pushwoosh/internal/utils/PWLog$Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->ERROR:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/pushwoosh/internal/utils/PWLog$Level;)Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog;->b:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b()Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->WARN:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;)Z

    move-result v0

    return v0
.end method

.method private static c()Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->INFO:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;)Z

    move-result v0

    return v0
.end method

.method private static d()Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->DEBUG:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;)Z

    move-result v0

    return v0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pushwoosh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->DEBUG:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Pushwoosh"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static e()Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->NOISE:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;)Z

    move-result v0

    return v0
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pushwoosh"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->ERROR:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Pushwoosh"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static exception(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Exception occurred"

    invoke-static {v0, v1, p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static f()Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->FATAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;)Z

    move-result v0

    return v0
.end method

.method public static fatal(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pushwoosh"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->FATAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Pushwoosh"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static g()Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->INTERNAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;)Z

    move-result v0

    return v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pushwoosh"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->INFO:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Pushwoosh"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static init()V
    .locals 3

    sget-boolean v0, Lcom/pushwoosh/internal/utils/PWLog;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->logLevel()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog$Level;->valueOf(Ljava/lang/String;)Lcom/pushwoosh/internal/utils/PWLog$Level;

    move-result-object v1

    sput-object v1, Lcom/pushwoosh/internal/utils/PWLog;->b:Lcom/pushwoosh/internal/utils/PWLog$Level;

    sget-object v1, Lcom/pushwoosh/internal/utils/PWLog;->b:Lcom/pushwoosh/internal/utils/PWLog$Level;

    sget-object v2, Lcom/pushwoosh/internal/utils/PWLog$Level;->INTERNAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/pushwoosh/internal/utils/PWLog$Level;->DEBUG:Lcom/pushwoosh/internal/utils/PWLog$Level;

    sput-object v1, Lcom/pushwoosh/internal/utils/PWLog;->b:Lcom/pushwoosh/internal/utils/PWLog$Level;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized log level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pushwoosh/internal/utils/PWLog;->b:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/pushwoosh/internal/utils/PWLog;->a:Z

    return-void
.end method

.method public static internal(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pushwoosh"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->INTERNAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Pushwoosh"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->f()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->a()Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->b()Z

    move-result p0

    return p0

    :pswitch_3
    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->c()Z

    move-result p0

    return p0

    :pswitch_4
    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->d()Z

    move-result p0

    return p0

    :pswitch_5
    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->e()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static noise(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static noise(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pushwoosh"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->NONE:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static noise(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Pushwoosh"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static noise(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setLogsUpdateListener(Lcom/pushwoosh/internal/utils/PWLog$LogsUpdateListener;)V
    .locals 0

    sput-object p0, Lcom/pushwoosh/internal/utils/PWLog;->c:Lcom/pushwoosh/internal/utils/PWLog$LogsUpdateListener;

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pushwoosh"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->WARN:Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->a(Lcom/pushwoosh/internal/utils/PWLog$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Pushwoosh"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
