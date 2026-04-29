.class Lcom/fpe/comptenickel/RSAModule$1;
.super Ljava/lang/Object;
.source "RSAModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fpe/comptenickel/RSAModule;->generateKeys(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fpe/comptenickel/RSAModule;

.field final synthetic val$customerId:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/fpe/comptenickel/RSAModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/fpe/comptenickel/RSAModule$1;->this$0:Lcom/fpe/comptenickel/RSAModule;

    iput-object p2, p0, Lcom/fpe/comptenickel/RSAModule$1;->val$customerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/fpe/comptenickel/RSAModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/fpe/comptenickel/RSAModule$1;->this$0:Lcom/fpe/comptenickel/RSAModule;

    invoke-static {v0}, Lcom/fpe/comptenickel/RSAModule;->access$100(Lcom/fpe/comptenickel/RSAModule;)Lcom/fpe/comptenickel/RSA;

    move-result-object v0

    iget-object v1, p0, Lcom/fpe/comptenickel/RSAModule$1;->this$0:Lcom/fpe/comptenickel/RSAModule;

    invoke-static {v1}, Lcom/fpe/comptenickel/RSAModule;->access$000(Lcom/fpe/comptenickel/RSAModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/fpe/comptenickel/RSAModule$1;->val$customerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fpe/comptenickel/RSA;->generateKeys(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/fpe/comptenickel/RSAModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/fpe/comptenickel/RSAModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
