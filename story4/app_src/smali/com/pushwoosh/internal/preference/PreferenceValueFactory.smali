.class public Lcom/pushwoosh/internal/preference/PreferenceValueFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildPreferenceArrayListValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/pushwoosh/internal/preference/PreferenceArrayListValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public buildPreferenceIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)Lcom/pushwoosh/internal/preference/PreferenceIntValue;
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    invoke-direct {v0, p1, p2, p3}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-object v0
.end method
