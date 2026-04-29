.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

.field private final f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

.field private final g:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

.field private final h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

.field private final i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:Landroid/content/BroadcastReceiver;

.field private final n:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    iput-object p4, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    iput-object p5, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->g:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    iput-object p6, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    iput-object p7, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

    invoke-direct {p0, p8}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->j:Ljava/lang/String;

    invoke-direct {p0, p8}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->b(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->k:Ljava/lang/String;

    invoke-direct {p0, p2, p9}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->b()Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->m:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a()Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->n:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->l:I

    return-void
.end method

.method private a()Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$1;

    invoke-direct {v0, p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$1;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;)V

    return-object v0
.end method

.method private a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ironz.binaryprefs.ACTION_PREFERENCE_UPDATED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;->a()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->d:Ljava/lang/String;

    const-string v1, "preference_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->l:I

    const/4 v1, 0x0

    const-string v2, "preference_process_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "preference_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preference_value"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->b(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c(Ljava/lang/String;[B)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b()Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$2;

    invoke-direct {v0, p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$2;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;)V

    return-object v0
.end method

.method private b(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ironz.binaryprefs.ACTION_PREFERENCE_REMOVED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;->a()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->d:Ljava/lang/String;

    const-string v1, "preference_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->l:I

    const/4 v1, 0x0

    const-string v2, "preference_process_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->f(Ljava/lang/String;[B)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->c(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$3;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;->a(Ljava/lang/Runnable;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->m:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->j:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->n:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$4;

    invoke-direct {v1, p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$4;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;->a(Ljava/lang/Runnable;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    return-void
.end method

.method static synthetic c(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->d(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$5;

    invoke-direct {v1, p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$5;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->d(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private d(Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

    invoke-interface {v0, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;->b([B)[B

    move-result-object p2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->g:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-virtual {v0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->a(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "preference_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$7;

    invoke-direct {v1, p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$7;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;->a(Ljava/lang/Runnable;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    return-void
.end method

.method private e(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$6;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;->a(Ljava/lang/Runnable;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->l:I

    const-string v2, "preference_process_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->d:Ljava/lang/String;

    const-string v2, "preference_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "preference_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private f(Ljava/lang/String;[B)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->l:I

    const-string v2, "preference_process_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->d:Ljava/lang/String;

    const-string v2, "preference_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "preference_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "preference_value"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->e(Ljava/lang/String;[B)V

    return-void
.end method

.method public b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->d()V

    :cond_0
    return-void
.end method
