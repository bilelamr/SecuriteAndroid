.class Lcom/fpe/comptenickel/RSAModule$2;
.super Ljava/lang/Object;
.source "RSAModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fpe/comptenickel/RSAModule;->sign(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fpe/comptenickel/RSAModule;

.field final synthetic val$customerId:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/fpe/comptenickel/RSAModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/fpe/comptenickel/RSAModule$2;->this$0:Lcom/fpe/comptenickel/RSAModule;

    iput-object p2, p0, Lcom/fpe/comptenickel/RSAModule$2;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/fpe/comptenickel/RSAModule$2;->val$customerId:Ljava/lang/String;

    iput-object p4, p0, Lcom/fpe/comptenickel/RSAModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/fpe/comptenickel/RSAModule$2;->this$0:Lcom/fpe/comptenickel/RSAModule;

    invoke-static {v0}, Lcom/fpe/comptenickel/RSAModule;->access$100(Lcom/fpe/comptenickel/RSAModule;)Lcom/fpe/comptenickel/RSA;

    move-result-object v0

    iget-object v1, p0, Lcom/fpe/comptenickel/RSAModule$2;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/fpe/comptenickel/RSAModule$2;->val$customerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fpe/comptenickel/RSA;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/fpe/comptenickel/RSAModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoPrivateKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/fpe/comptenickel/RSAModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/fpe/comptenickel/RSAModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
