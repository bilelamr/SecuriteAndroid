.class Lcom/pushwoosh/internal/platform/prefs/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/prefs/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public provideDefault()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/prefs/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public providePrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/prefs/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method
