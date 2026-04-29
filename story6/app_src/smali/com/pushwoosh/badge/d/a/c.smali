.class public final Lcom/pushwoosh/badge/d/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/pushwoosh/badge/d/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/pushwoosh/badge/d/a/a;

.field private static d:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pushwoosh/badge/d/a/c;->b:Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/n;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/l;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    const-class v1, Lcom/pushwoosh/badge/d/a/a/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find launch intent for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShortcutBadger"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/pushwoosh/badge/d/a/c;->d:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x10000

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "resolver"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/badge/d/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/pushwoosh/badge/d/a/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object v1, Lcom/pushwoosh/badge/d/a/c;->c:Lcom/pushwoosh/badge/d/a/a;

    :cond_3
    sget-object p0, Lcom/pushwoosh/badge/d/a/c;->c:Lcom/pushwoosh/badge/d/a/a;

    if-nez p0, :cond_8

    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "ZUK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/pushwoosh/badge/d/a/a/n;

    invoke-direct {p0}, Lcom/pushwoosh/badge/d/a/a/n;-><init>()V

    :goto_1
    sput-object p0, Lcom/pushwoosh/badge/d/a/c;->c:Lcom/pushwoosh/badge/d/a/a;

    goto :goto_2

    :cond_4
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "OPPO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/pushwoosh/badge/d/a/a/i;

    invoke-direct {p0}, Lcom/pushwoosh/badge/d/a/a/i;-><init>()V

    goto :goto_1

    :cond_5
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "VIVO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/pushwoosh/badge/d/a/a/l;

    invoke-direct {p0}, Lcom/pushwoosh/badge/d/a/a/l;-><init>()V

    goto :goto_1

    :cond_6
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "ZTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/pushwoosh/badge/d/a/a/m;

    invoke-direct {p0}, Lcom/pushwoosh/badge/d/a/a/m;-><init>()V

    goto :goto_1

    :cond_7
    new-instance p0, Lcom/pushwoosh/badge/d/a/a/d;

    invoke-direct {p0}, Lcom/pushwoosh/badge/d/a/a/d;-><init>()V

    goto :goto_1

    :cond_8
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_3
    return v1
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/pushwoosh/badge/d/a/c;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/pushwoosh/badge/d/a/b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    const-string v0, "ShortcutBadger"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Unable to execute badge"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pushwoosh/badge/d/a/b;
        }
    .end annotation

    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->c:Lcom/pushwoosh/badge/d/a/a;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/pushwoosh/badge/d/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/pushwoosh/badge/d/a/b;

    const-string p1, "No default launcher available"

    invoke-direct {p0, p1}, Lcom/pushwoosh/badge/d/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Lcom/pushwoosh/badge/d/a/c;->c:Lcom/pushwoosh/badge/d/a/a;

    sget-object v1, Lcom/pushwoosh/badge/d/a/c;->d:Landroid/content/ComponentName;

    invoke-interface {v0, p0, v1, p1}, Lcom/pushwoosh/badge/d/a/a;->a(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/pushwoosh/badge/d/a/b;

    const-string v0, "Unable to execute badge"

    invoke-direct {p1, v0, p0}, Lcom/pushwoosh/badge/d/a/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
