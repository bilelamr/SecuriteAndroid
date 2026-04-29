.class final synthetic Lcom/pushwoosh/repository/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/repository/RegistrationPrefs;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/repository/RegistrationPrefs;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    iput-object p2, p0, Lcom/pushwoosh/repository/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/pushwoosh/repository/RegistrationPrefs;Ljava/lang/String;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/repository/e;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/repository/e;-><init>(Lcom/pushwoosh/repository/RegistrationPrefs;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/repository/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    iget-object v1, p0, Lcom/pushwoosh/repository/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/pushwoosh/repository/d;->a(Lcom/pushwoosh/repository/RegistrationPrefs;Ljava/lang/String;Lcom/pushwoosh/function/Result;)V

    return-void
.end method
