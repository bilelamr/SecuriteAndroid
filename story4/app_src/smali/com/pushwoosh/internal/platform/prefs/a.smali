.class Lcom/pushwoosh/internal/platform/prefs/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/platform/prefs/b;->a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/prefs/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/prefs/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "Prefs"

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public provideDefault()Landroid/content/SharedPreferences;
    .locals 2

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;

    iget-object v1, p0, Lcom/pushwoosh/internal/platform/prefs/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;-><init>(Landroid/content/Context;)V

    const-string v1, "pushwoosh_default"

    invoke-virtual {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a(Z)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/internal/platform/prefs/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e;

    move-result-object v0

    return-object v0
.end method

.method public providePrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;

    iget-object v1, p0, Lcom/pushwoosh/internal/platform/prefs/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a(Z)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/prefs/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b;->a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e;

    move-result-object p1

    return-object p1
.end method
