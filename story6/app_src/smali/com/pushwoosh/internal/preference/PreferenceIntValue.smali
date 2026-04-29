.class public Lcom/pushwoosh/internal/preference/PreferenceIntValue;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/preference/PreferenceValue;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-static {p2}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    iput p3, p0, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->c:I

    :goto_1
    iput-object p1, p0, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->c:I

    return v0
.end method

.method public set(I)V
    .locals 2

    iput p1, p0, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->c:I

    iget-object v0, p0, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string p1, "Incorrect state of the app preferences is null"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
