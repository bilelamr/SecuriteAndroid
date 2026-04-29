.class final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e;


# instance fields
.field private final a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

.field private final b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;

.field private final c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

.field private final d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

.field private final e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

.field private final f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

.field private final g:Ljava/util/concurrent/locks/Lock;

.field private final h:Ljava/util/concurrent/locks/Lock;

.field private final i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;


# direct methods
.method constructor <init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;

    iput-object p3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    iput-object p4, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    iput-object p5, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    iput-object p6, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-interface {p7}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p7}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;->b()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->h:Ljava/util/concurrent/locks/Lock;

    iput-object p8, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;

    return-void
.end method

.method private b()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;
    .locals 9

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;

    iget-object v2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;

    iget-object v4, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    iget-object v5, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    iget-object v6, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    iget-object v7, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    iget-object v8, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->h:Ljava/util/concurrent/locks/Lock;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;Ljava/util/concurrent/locks/Lock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->b()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;

    invoke-interface {v0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->i:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;

    invoke-interface {v0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/e;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/e;-><init>(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;

    invoke-interface {p1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/e;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/e;-><init>(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;

    invoke-interface {p1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
