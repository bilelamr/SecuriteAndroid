.class public Lcom/pushwoosh/badge/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pushwoosh/badge/b/a;

.field private final b:Lcom/pushwoosh/internal/network/RequestManager;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/badge/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/badge/c/a;->a:Lcom/pushwoosh/badge/b/a;

    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/badge/c/a;->b:Lcom/pushwoosh/internal/network/RequestManager;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/badge/c/a;->a:Lcom/pushwoosh/badge/b/a;

    invoke-virtual {v0}, Lcom/pushwoosh/badge/b/a;->a()Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->set(I)V

    iget-object v0, p0, Lcom/pushwoosh/badge/c/a;->b:Lcom/pushwoosh/internal/network/RequestManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/pushwoosh/badge/c/b;

    invoke-direct {v1, p1}, Lcom/pushwoosh/badge/c/b;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;)V

    :cond_0
    return-void
.end method
