.class public Lcom/fpe/comptenickel/RSAModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RSAModule.java"


# static fields
.field private static final KEY_TAG:Ljava/lang/String; = "RSA"


# instance fields
.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private rsa:Lcom/fpe/comptenickel/RSA;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 19
    iput-object p1, p0, Lcom/fpe/comptenickel/RSAModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 20
    new-instance p1, Lcom/fpe/comptenickel/RSA;

    const-string v0, "RSA"

    invoke-direct {p1, v0}, Lcom/fpe/comptenickel/RSA;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fpe/comptenickel/RSAModule;->rsa:Lcom/fpe/comptenickel/RSA;

    return-void
.end method

.method static synthetic access$000(Lcom/fpe/comptenickel/RSAModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/fpe/comptenickel/RSAModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/fpe/comptenickel/RSAModule;)Lcom/fpe/comptenickel/RSA;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/fpe/comptenickel/RSAModule;->rsa:Lcom/fpe/comptenickel/RSA;

    return-object p0
.end method


# virtual methods
.method public generateKeys(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 30
    new-instance v0, Lcom/fpe/comptenickel/RSAModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/fpe/comptenickel/RSAModule$1;-><init>(Lcom/fpe/comptenickel/RSAModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RSAModule"

    return-object v0
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 45
    new-instance v0, Lcom/fpe/comptenickel/RSAModule$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fpe/comptenickel/RSAModule$2;-><init>(Lcom/fpe/comptenickel/RSAModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
