.class public Lcom/pushwoosh/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/q$a;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static e:Lcom/pushwoosh/q;


# instance fields
.field private b:Lcom/pushwoosh/internal/utils/k;

.field private c:Lcom/pushwoosh/notification/c;

.field private d:Lcom/pushwoosh/internal/a/g;

.field private final f:Lcom/pushwoosh/internal/utils/d;

.field private final g:Lcom/pushwoosh/notification/e;

.field private final h:Lcom/pushwoosh/repository/s;

.field private final i:Lcom/pushwoosh/repository/RegistrationPrefs;

.field private final j:Lcom/pushwoosh/inapp/c;

.field private final k:Lcom/pushwoosh/inapp/a/i;

.field private l:Lcom/pushwoosh/notification/NotificationServiceExtension;

.field private m:Lcom/pushwoosh/GDPRManager;

.field private n:Lcom/pushwoosh/richmedia/a;

.field private o:Lcom/pushwoosh/internal/utils/c;

.field private p:Lcom/pushwoosh/repository/i;

.field private q:Lcom/pushwoosh/s;

.field private r:Lcom/pushwoosh/repository/d;

.field private s:Lcom/pushwoosh/richmedia/RichMediaStyle;

.field private t:Lcom/pushwoosh/internal/command/CommandApplayer;

.field private u:Lcom/pushwoosh/notification/handlers/notification/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/pushwoosh/q$a;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pushwoosh/internal/utils/k;

    invoke-direct {v0}, Lcom/pushwoosh/internal/utils/k;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/q;->b:Lcom/pushwoosh/internal/utils/k;

    invoke-static {p1}, Lcom/pushwoosh/q$a;->a(Lcom/pushwoosh/q$a;)Lcom/pushwoosh/internal/utils/d;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/q;->f:Lcom/pushwoosh/internal/utils/d;

    new-instance v0, Lcom/pushwoosh/internal/command/CommandApplayer;

    invoke-direct {v0}, Lcom/pushwoosh/internal/command/CommandApplayer;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/q;->t:Lcom/pushwoosh/internal/command/CommandApplayer;

    new-instance v0, Lcom/pushwoosh/notification/handlers/notification/d;

    iget-object v1, p0, Lcom/pushwoosh/q;->t:Lcom/pushwoosh/internal/command/CommandApplayer;

    invoke-direct {v0, v1}, Lcom/pushwoosh/notification/handlers/notification/d;-><init>(Lcom/pushwoosh/internal/command/CommandApplayer;)V

    iput-object v0, p0, Lcom/pushwoosh/q;->u:Lcom/pushwoosh/notification/handlers/notification/d;

    new-instance v0, Lcom/pushwoosh/repository/d;

    invoke-direct {v0}, Lcom/pushwoosh/repository/d;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/q;->r:Lcom/pushwoosh/repository/d;

    iget-object v0, p0, Lcom/pushwoosh/q;->f:Lcom/pushwoosh/internal/utils/d;

    iget-object v1, p0, Lcom/pushwoosh/q;->b:Lcom/pushwoosh/internal/utils/k;

    iget-object v2, p0, Lcom/pushwoosh/q;->r:Lcom/pushwoosh/repository/d;

    invoke-static {v0, v1, v2}, Lcom/pushwoosh/repository/RepositoryModule;->init(Lcom/pushwoosh/internal/utils/d;Lcom/pushwoosh/internal/utils/k;Lcom/pushwoosh/repository/d;)V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/q;->i:Lcom/pushwoosh/repository/RegistrationPrefs;

    iget-object v0, p0, Lcom/pushwoosh/q;->i:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-static {v0}, Lcom/pushwoosh/internal/network/NetworkModule;->init(Lcom/pushwoosh/repository/RegistrationPrefs;)V

    new-instance v0, Lcom/pushwoosh/notification/e;

    invoke-static {p1}, Lcom/pushwoosh/q$a;->b(Lcom/pushwoosh/q$a;)Lcom/pushwoosh/internal/registrar/PushRegistrar;

    move-result-object p1

    iget-object v1, p0, Lcom/pushwoosh/q;->f:Lcom/pushwoosh/internal/utils/d;

    invoke-direct {v0, p1, v1}, Lcom/pushwoosh/notification/e;-><init>(Lcom/pushwoosh/internal/registrar/PushRegistrar;Lcom/pushwoosh/internal/utils/d;)V

    iput-object v0, p0, Lcom/pushwoosh/q;->g:Lcom/pushwoosh/notification/e;

    new-instance p1, Lcom/pushwoosh/inapp/c;

    new-instance v0, Lcom/pushwoosh/inapp/h;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/h;-><init>()V

    invoke-direct {p1, v0}, Lcom/pushwoosh/inapp/c;-><init>(Lcom/pushwoosh/inapp/g;)V

    iput-object p1, p0, Lcom/pushwoosh/q;->j:Lcom/pushwoosh/inapp/c;

    new-instance p1, Lcom/pushwoosh/notification/c;

    invoke-direct {p1}, Lcom/pushwoosh/notification/c;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/q;->c:Lcom/pushwoosh/notification/c;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getPrefsProvider()Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    move-result-object p1

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getAppInfoProvider()Lcom/pushwoosh/internal/platform/a/a;

    move-result-object v0

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getTimeProvide()Lcom/pushwoosh/internal/utils/j;

    move-result-object v1

    new-instance v2, Lcom/pushwoosh/internal/utils/c;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getPrefsProvider()Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    move-result-object v3

    const-string v4, "PWAppVersion"

    invoke-interface {v3, v4}, Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;->providePrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pushwoosh/internal/utils/c;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v2, p0, Lcom/pushwoosh/q;->o:Lcom/pushwoosh/internal/utils/c;

    new-instance v2, Lcom/pushwoosh/inapp/a/i;

    iget-object v3, p0, Lcom/pushwoosh/q;->o:Lcom/pushwoosh/internal/utils/c;

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/pushwoosh/inapp/a/i;-><init>(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/a/a;Lcom/pushwoosh/internal/utils/j;Lcom/pushwoosh/internal/utils/c;)V

    iput-object v2, p0, Lcom/pushwoosh/q;->k:Lcom/pushwoosh/inapp/a/i;

    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object p1

    new-instance v0, Lcom/pushwoosh/repository/y;

    invoke-direct {v0}, Lcom/pushwoosh/repository/y;-><init>()V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRequestStorage()Lcom/pushwoosh/internal/network/f;

    move-result-object v9

    new-instance v2, Lcom/pushwoosh/repository/s;

    iget-object v7, p0, Lcom/pushwoosh/q;->i:Lcom/pushwoosh/repository/RegistrationPrefs;

    move-object v4, v2

    move-object v5, p1

    move-object v6, v0

    move-object v8, v1

    invoke-direct/range {v4 .. v9}, Lcom/pushwoosh/repository/s;-><init>(Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/repository/y;Lcom/pushwoosh/repository/RegistrationPrefs;Lcom/pushwoosh/repository/p;Lcom/pushwoosh/internal/network/f;)V

    iput-object v2, p0, Lcom/pushwoosh/q;->h:Lcom/pushwoosh/repository/s;

    new-instance v2, Lcom/pushwoosh/GDPRManager;

    iget-object v3, p0, Lcom/pushwoosh/q;->h:Lcom/pushwoosh/repository/s;

    iget-object v4, p0, Lcom/pushwoosh/q;->g:Lcom/pushwoosh/notification/e;

    iget-object v5, p0, Lcom/pushwoosh/q;->j:Lcom/pushwoosh/inapp/c;

    invoke-direct {v2, v3, v4, v5}, Lcom/pushwoosh/GDPRManager;-><init>(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/notification/e;Lcom/pushwoosh/inapp/c;)V

    iput-object v2, p0, Lcom/pushwoosh/q;->m:Lcom/pushwoosh/GDPRManager;

    new-instance v2, Lcom/pushwoosh/richmedia/RichMediaStyle;

    new-instance v3, Lcom/pushwoosh/richmedia/animation/RichMediaAnimationSlideBottom;

    invoke-direct {v3}, Lcom/pushwoosh/richmedia/animation/RichMediaAnimationSlideBottom;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/pushwoosh/richmedia/RichMediaStyle;-><init>(ILcom/pushwoosh/richmedia/animation/RichMediaAnimation;)V

    iput-object v2, p0, Lcom/pushwoosh/q;->s:Lcom/pushwoosh/richmedia/RichMediaStyle;

    new-instance v2, Lcom/pushwoosh/richmedia/a;

    new-instance v3, Lcom/pushwoosh/inapp/view/b/f;

    invoke-direct {v3}, Lcom/pushwoosh/inapp/view/b/f;-><init>()V

    new-instance v4, Lcom/pushwoosh/richmedia/e;

    invoke-direct {v4}, Lcom/pushwoosh/richmedia/e;-><init>()V

    invoke-static {}, Lcom/pushwoosh/inapp/b;->a()Lcom/pushwoosh/inapp/f/c;

    move-result-object v5

    iget-object v6, p0, Lcom/pushwoosh/q;->s:Lcom/pushwoosh/richmedia/RichMediaStyle;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/pushwoosh/richmedia/a;-><init>(Lcom/pushwoosh/inapp/view/b/f;Lcom/pushwoosh/richmedia/e;Lcom/pushwoosh/inapp/f/c;Lcom/pushwoosh/richmedia/RichMediaStyle;)V

    iput-object v2, p0, Lcom/pushwoosh/q;->n:Lcom/pushwoosh/richmedia/a;

    new-instance v2, Lcom/pushwoosh/repository/i;

    invoke-virtual {v1}, Lcom/pushwoosh/repository/p;->q()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v7

    iget-object v8, p0, Lcom/pushwoosh/q;->o:Lcom/pushwoosh/internal/utils/c;

    iget-object v9, p0, Lcom/pushwoosh/q;->g:Lcom/pushwoosh/notification/e;

    iget-object v10, p0, Lcom/pushwoosh/q;->i:Lcom/pushwoosh/repository/RegistrationPrefs;

    iget-object v11, p0, Lcom/pushwoosh/q;->r:Lcom/pushwoosh/repository/d;

    move-object v4, v2

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v4 .. v11}, Lcom/pushwoosh/repository/i;-><init>(Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/repository/y;Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;Lcom/pushwoosh/internal/utils/c;Lcom/pushwoosh/notification/e;Lcom/pushwoosh/repository/RegistrationPrefs;Lcom/pushwoosh/repository/d;)V

    iput-object v2, p0, Lcom/pushwoosh/q;->p:Lcom/pushwoosh/repository/i;

    iget-object p1, p0, Lcom/pushwoosh/q;->p:Lcom/pushwoosh/repository/i;

    invoke-virtual {p1}, Lcom/pushwoosh/repository/i;->a()V

    new-instance p1, Lcom/pushwoosh/s;

    iget-object v1, p0, Lcom/pushwoosh/q;->f:Lcom/pushwoosh/internal/utils/d;

    iget-object v2, p0, Lcom/pushwoosh/q;->i:Lcom/pushwoosh/repository/RegistrationPrefs;

    iget-object v3, p0, Lcom/pushwoosh/q;->p:Lcom/pushwoosh/repository/i;

    iget-object v4, p0, Lcom/pushwoosh/q;->o:Lcom/pushwoosh/internal/utils/c;

    iget-object v5, p0, Lcom/pushwoosh/q;->h:Lcom/pushwoosh/repository/s;

    iget-object v6, p0, Lcom/pushwoosh/q;->g:Lcom/pushwoosh/notification/e;

    iget-object v7, p0, Lcom/pushwoosh/q;->j:Lcom/pushwoosh/inapp/c;

    iget-object v8, p0, Lcom/pushwoosh/q;->r:Lcom/pushwoosh/repository/d;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/pushwoosh/s;-><init>(Lcom/pushwoosh/internal/utils/d;Lcom/pushwoosh/repository/RegistrationPrefs;Lcom/pushwoosh/repository/i;Lcom/pushwoosh/internal/utils/c;Lcom/pushwoosh/repository/s;Lcom/pushwoosh/notification/e;Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/repository/d;)V

    iput-object p1, p0, Lcom/pushwoosh/q;->q:Lcom/pushwoosh/s;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    new-instance v0, Lcom/pushwoosh/internal/a/d;

    invoke-direct {v0, p1}, Lcom/pushwoosh/internal/a/d;-><init>(Ljava/util/Random;)V

    new-instance p1, Lcom/pushwoosh/internal/a/f;

    invoke-direct {p1}, Lcom/pushwoosh/internal/a/f;-><init>()V

    new-instance v1, Lcom/pushwoosh/internal/a/a;

    invoke-direct {v1}, Lcom/pushwoosh/internal/a/a;-><init>()V

    new-instance v2, Lcom/pushwoosh/internal/a/c;

    invoke-direct {v2}, Lcom/pushwoosh/internal/a/c;-><init>()V

    new-instance v3, Lcom/pushwoosh/internal/a/g;

    invoke-direct {v3, p1, v1, v2, v0}, Lcom/pushwoosh/internal/a/g;-><init>(Lcom/pushwoosh/internal/a/f;Lcom/pushwoosh/internal/a/a;Lcom/pushwoosh/internal/a/c;Lcom/pushwoosh/internal/a/d;)V

    iput-object v3, p0, Lcom/pushwoosh/q;->d:Lcom/pushwoosh/internal/a/g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/q$a;Lcom/pushwoosh/q$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/q;-><init>(Lcom/pushwoosh/q$a;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/q;)Lcom/pushwoosh/q;
    .locals 0

    sput-object p0, Lcom/pushwoosh/q;->e:Lcom/pushwoosh/q;

    return-object p0
.end method

.method public static a()V
    .locals 2

    sget-boolean v0, Lcom/pushwoosh/q;->a:Z

    if-nez v0, :cond_0

    const-string v0, "PushwooshPlatform"

    const-string v1, "Pushwoosh library not initialized. All method calls will be ignored"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/pushwoosh/q;->a:Z

    :cond_0
    return-void
.end method

.method public static e()Lcom/pushwoosh/q;
    .locals 1

    sget-object v0, Lcom/pushwoosh/q;->e:Lcom/pushwoosh/q;

    return-object v0
.end method

.method static synthetic s()Lcom/pushwoosh/q;
    .locals 1

    sget-object v0, Lcom/pushwoosh/q;->e:Lcom/pushwoosh/q;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/pushwoosh/notification/c;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->c:Lcom/pushwoosh/notification/c;

    return-object v0
.end method

.method public c()Lcom/pushwoosh/notification/handlers/notification/d;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->u:Lcom/pushwoosh/notification/handlers/notification/d;

    return-object v0
.end method

.method public d()Lcom/pushwoosh/internal/a/g;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->d:Lcom/pushwoosh/internal/a/g;

    return-object v0
.end method

.method public f()Lcom/pushwoosh/internal/utils/d;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->f:Lcom/pushwoosh/internal/utils/d;

    return-object v0
.end method

.method public g()Lcom/pushwoosh/notification/e;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->g:Lcom/pushwoosh/notification/e;

    return-object v0
.end method

.method public h()Lcom/pushwoosh/repository/s;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->h:Lcom/pushwoosh/repository/s;

    return-object v0
.end method

.method public i()Lcom/pushwoosh/inapp/c;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->j:Lcom/pushwoosh/inapp/c;

    return-object v0
.end method

.method public j()Lcom/pushwoosh/richmedia/a;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->n:Lcom/pushwoosh/richmedia/a;

    return-object v0
.end method

.method public k()Lcom/pushwoosh/inapp/a/i;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->k:Lcom/pushwoosh/inapp/a/i;

    return-object v0
.end method

.method public l()Lcom/pushwoosh/GDPRManager;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->m:Lcom/pushwoosh/GDPRManager;

    return-object v0
.end method

.method public m()Lcom/pushwoosh/notification/NotificationServiceExtension;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->l:Lcom/pushwoosh/notification/NotificationServiceExtension;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/q;->f:Lcom/pushwoosh/internal/utils/d;

    invoke-interface {v0}, Lcom/pushwoosh/internal/utils/d;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/notification/NotificationServiceExtension;

    :goto_0
    iput-object v0, p0, Lcom/pushwoosh/q;->l:Lcom/pushwoosh/notification/NotificationServiceExtension;

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/pushwoosh/notification/NotificationServiceExtension;

    invoke-direct {v0}, Lcom/pushwoosh/notification/NotificationServiceExtension;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/pushwoosh/notification/NotificationServiceExtension;

    invoke-direct {v0}, Lcom/pushwoosh/notification/NotificationServiceExtension;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/q;->l:Lcom/pushwoosh/notification/NotificationServiceExtension;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/pushwoosh/q;->l:Lcom/pushwoosh/notification/NotificationServiceExtension;

    return-object v0
.end method

.method public n()Lcom/pushwoosh/richmedia/RichMediaStyle;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->s:Lcom/pushwoosh/richmedia/RichMediaStyle;

    return-object v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->q:Lcom/pushwoosh/s;

    invoke-virtual {v0}, Lcom/pushwoosh/s;->a()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->q:Lcom/pushwoosh/s;

    invoke-virtual {v0}, Lcom/pushwoosh/s;->b()V

    return-void
.end method

.method q()Lcom/pushwoosh/internal/utils/c;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->o:Lcom/pushwoosh/internal/utils/c;

    return-object v0
.end method

.method public r()Lcom/pushwoosh/repository/RegistrationPrefs;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/q;->i:Lcom/pushwoosh/repository/RegistrationPrefs;

    return-object v0
.end method
