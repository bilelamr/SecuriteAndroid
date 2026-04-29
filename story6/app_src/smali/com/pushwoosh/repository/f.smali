.class final synthetic Lcom/pushwoosh/repository/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/pushwoosh/repository/RegistrationPrefs;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/pushwoosh/repository/RegistrationPrefs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/pushwoosh/repository/f;->b:Lcom/pushwoosh/repository/RegistrationPrefs;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/pushwoosh/repository/RegistrationPrefs;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/repository/f;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/repository/f;-><init>(Ljava/lang/String;Lcom/pushwoosh/repository/RegistrationPrefs;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/repository/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/pushwoosh/repository/f;->b:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-static {v0, v1, p1}, Lcom/pushwoosh/repository/d;->a(Ljava/lang/String;Lcom/pushwoosh/repository/RegistrationPrefs;Lcom/pushwoosh/function/Result;)V

    return-void
.end method
