.class public Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/preference/PreferenceValue;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :goto_0
    iput-boolean p2, p0, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-static {p2}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    iput-boolean p3, p0, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->c:Z

    :goto_1
    iput-object p1, p0, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->c:Z

    return v0
.end method

.method public set(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->c:Z

    iget-object v0, p0, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string p1, "Incorrect state of the app preferences is null"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
