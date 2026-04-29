.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private final i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a/b;

.field private final j:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;

.field private k:Ljava/io/File;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;

.field private p:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

.field private q:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;

    invoke-direct {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->c:Ljava/util/Map;

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->g:Ljava/util/Map;

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a/b;

    invoke-direct {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a/b;

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;

    invoke-direct {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->j:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;

    const-string v0, "default"

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->n:Z

    sget-object v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->o:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;

    sget-object v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->p:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

    sget-object v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->q:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->k:Ljava/io/File;

    return-void
.end method

.method private b()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;

    iget-object v1, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->l:Ljava/lang/String;

    iget-object v2, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->k:Ljava/io/File;

    invoke-direct {v9, v1, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;

    invoke-direct {v1, v9}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;)V

    new-instance v15, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;

    iget-object v2, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->l:Ljava/lang/String;

    iget-object v3, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->b:Ljava/util/Map;

    iget-object v4, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->c:Ljava/util/Map;

    invoke-direct {v15, v2, v9, v3, v4}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;-><init>(Ljava/lang/String;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v11, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;

    iget-object v2, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->o:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;

    iget-object v3, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->p:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

    invoke-direct {v11, v1, v15, v2, v3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;)V

    new-instance v13, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/b;

    iget-object v1, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->l:Ljava/lang/String;

    iget-object v2, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->f:Ljava/util/Map;

    invoke-direct {v13, v1, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v14, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/b;

    iget-object v1, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->l:Ljava/lang/String;

    iget-object v2, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->e:Ljava/util/Map;

    invoke-direct {v14, v1, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v12, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;

    iget-object v1, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->l:Ljava/lang/String;

    iget-object v2, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->q:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    iget-object v3, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->d:Ljava/util/Map;

    invoke-direct {v12, v1, v2, v3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;-><init>(Ljava/lang/String;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;Ljava/util/Map;)V

    new-instance v10, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    iget-object v1, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a/b;

    invoke-direct {v10, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a/b;)V

    iget-boolean v1, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->m:Z

    if-eqz v1, :cond_0

    new-instance v16, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;

    iget-object v2, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->h:Landroid/content/Context;

    iget-object v3, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->l:Ljava/lang/String;

    iget-object v8, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->p:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

    iget-object v7, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->g:Ljava/util/Map;

    move-object/from16 v1, v16

    move-object v4, v13

    move-object v5, v14

    move-object v6, v10

    move-object/from16 v17, v7

    move-object v7, v12

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    move-object/from16 v18, v10

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/d;

    iget-object v2, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->l:Ljava/lang/String;

    iget-object v3, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->g:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/d;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v16, v1

    :goto_0
    iget-boolean v1, v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->n:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;

    move-object v2, v1

    move-object v3, v15

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v11

    move-object/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;

    move-object v2, v1

    move-object v3, v15

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v11

    move-object/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V

    :goto_1
    new-instance v2, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;

    move-object v10, v2

    move-object v3, v12

    move-object/from16 v12, v16

    move-object v4, v15

    move-object v15, v3

    move-object/from16 v16, v18

    move-object/from16 v17, v4

    move-object/from16 v18, v1

    invoke-direct/range {v10 .. v18}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;)V

    return-object v2
.end method


# virtual methods
.method public a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->q:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;
    .locals 0

    iput-boolean p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->m:Z

    return-object p0
.end method

.method public a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IPC mode can\'t be used with lazy in-memory cache strategy!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->b()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->j:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;

    invoke-virtual {v1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;->a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/c;

    const-string v1, "Preferences should be instantiated in the main thread."

    invoke-direct {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method
