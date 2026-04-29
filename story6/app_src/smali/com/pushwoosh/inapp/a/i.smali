.class public Lcom/pushwoosh/inapp/a/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "i"


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/inapp/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/a/a;Lcom/pushwoosh/internal/utils/j;Lcom/pushwoosh/internal/utils/c;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lcom/pushwoosh/inapp/a/i;->a(Lcom/pushwoosh/internal/platform/a/a;)F

    move-result p2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BusinessCasesThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/a/i;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/i;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const-string v0, "PWBusinessCasesState"

    invoke-interface {p1, v0}, Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;->providePrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/i;->c:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/pushwoosh/inapp/a/i;->c:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/i;->b:Ljava/util/Map;

    iget-object p1, p0, Lcom/pushwoosh/inapp/a/i;->b:Ljava/util/Map;

    new-instance v6, Lcom/pushwoosh/inapp/a/a;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pushwoosh/inapp/a/i;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lcom/pushwoosh/inapp/a/j;->a(Lcom/pushwoosh/internal/utils/c;)Lcom/pushwoosh/inapp/a/a$c;

    move-result-object v4

    const-string v1, "welcome-inapp"

    move-object v0, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/pushwoosh/inapp/a/a;-><init>(Ljava/lang/String;FLandroid/content/SharedPreferences;Lcom/pushwoosh/inapp/a/a$c;Lcom/pushwoosh/internal/utils/j;)V

    const-string v0, "welcome-inapp"

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/pushwoosh/inapp/a/i;->b:Ljava/util/Map;

    new-instance v6, Lcom/pushwoosh/inapp/a/a;

    iget-object v3, p0, Lcom/pushwoosh/inapp/a/i;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lcom/pushwoosh/inapp/a/k;->a(Lcom/pushwoosh/internal/utils/c;)Lcom/pushwoosh/inapp/a/a$c;

    move-result-object v4

    const-string v1, "app-update-message"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/pushwoosh/inapp/a/a;-><init>(Ljava/lang/String;FLandroid/content/SharedPreferences;Lcom/pushwoosh/inapp/a/a$c;Lcom/pushwoosh/internal/utils/j;)V

    const-string p4, "app-update-message"

    invoke-interface {p1, p4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/pushwoosh/inapp/a/i;->b:Ljava/util/Map;

    new-instance p4, Lcom/pushwoosh/inapp/a/a;

    iget-object v3, p0, Lcom/pushwoosh/inapp/a/i;->c:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/pushwoosh/inapp/a/l;->a(Lcom/pushwoosh/inapp/a/i;)Lcom/pushwoosh/inapp/a/a$c;

    move-result-object v4

    const-string v1, "push-unregister"

    move-object v0, p4

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/pushwoosh/inapp/a/a;-><init>(Ljava/lang/String;FLandroid/content/SharedPreferences;Lcom/pushwoosh/inapp/a/a$c;Lcom/pushwoosh/internal/utils/j;)V

    const-string v0, "push-unregister"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/pushwoosh/inapp/a/i;->b:Ljava/util/Map;

    new-instance p4, Lcom/pushwoosh/inapp/a/a;

    iget-object v3, p0, Lcom/pushwoosh/inapp/a/i;->c:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/pushwoosh/inapp/a/m;->a(Lcom/pushwoosh/inapp/a/i;)Lcom/pushwoosh/inapp/a/a$c;

    move-result-object v4

    const-string v1, "push-register"

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/pushwoosh/inapp/a/a;-><init>(Ljava/lang/String;FLandroid/content/SharedPreferences;Lcom/pushwoosh/inapp/a/a$c;Lcom/pushwoosh/internal/utils/j;)V

    const-string p2, "push-register"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/pushwoosh/internal/platform/a/a;)F
    .locals 3

    invoke-interface {p1}, Lcom/pushwoosh/internal/platform/a/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "com.pushwoosh.in_app_business_solutions_capping"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    const-string v2, "wrong format capping, capping must be positive number"

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/pushwoosh/inapp/a/i;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    sget-object p1, Lcom/pushwoosh/inapp/a/i;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_4
    sget-object v0, Lcom/pushwoosh/inapp/a/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Up capping:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/a/a;Lcom/pushwoosh/inapp/a/a$a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/a/a;->a(Lcom/pushwoosh/inapp/a/a$a;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/e/b/b;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/e/b/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/e/b/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/pushwoosh/inapp/a/g;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/a/g;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/q;->k()Lcom/pushwoosh/inapp/a/i;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pushwoosh/inapp/a/i;->a(Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/pushwoosh/inapp/a/g;->a(Lorg/json/JSONObject;)Lcom/pushwoosh/inapp/a/g;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/q;->k()Lcom/pushwoosh/inapp/a/i;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pushwoosh/inapp/a/i;->a(Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/a/i;)Z
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/a/i;->c()Z

    move-result p0

    return p0
.end method

.method private b()Z
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/notification/e;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/pushwoosh/inapp/a/i;)Z
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/a/i;->b()Z

    move-result p0

    return p0
.end method

.method private c()Z
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/notification/e;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/i;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/i;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/a/a;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/pushwoosh/inapp/a/i;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1, p2}, Lcom/pushwoosh/inapp/a/n;->a(Lcom/pushwoosh/inapp/a/a;Lcom/pushwoosh/inapp/a/a$a;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/inapp/a/g;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inapp/a/a;

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pushwoosh/inapp/a/g;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v2}, Lcom/pushwoosh/inapp/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pushwoosh/inapp/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/pushwoosh/inapp/b;->b()Lcom/pushwoosh/inapp/f/d;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/pushwoosh/inapp/a/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/pushwoosh/inapp/f/d;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/pushwoosh/inapp/e/b/b;->d()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/pushwoosh/inapp/a/g;->b()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_1

    :cond_3
    return-void
.end method
