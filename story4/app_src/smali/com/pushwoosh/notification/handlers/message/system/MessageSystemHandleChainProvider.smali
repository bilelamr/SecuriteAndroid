.class public Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;


# instance fields
.field private b:Lcom/pushwoosh/internal/chain/Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;

    invoke-direct {v0}, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;-><init>()V

    sput-object v0, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;->a:Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/pushwoosh/internal/chain/Chain;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/notification/handlers/message/system/e$a;

    invoke-direct {v0}, Lcom/pushwoosh/notification/handlers/message/system/e$a;-><init>()V

    new-instance v1, Lcom/pushwoosh/notification/handlers/message/system/f;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/message/system/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/message/system/e$a;->a(Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;)Lcom/pushwoosh/notification/handlers/message/system/e$a;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/notification/handlers/message/system/a;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/message/system/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/message/system/e$a;->a(Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;)Lcom/pushwoosh/notification/handlers/message/system/e$a;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/notification/handlers/message/system/d;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/message/system/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/message/system/e$a;->a(Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;)Lcom/pushwoosh/notification/handlers/message/system/e$a;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/notification/handlers/message/system/b;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/message/system/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/message/system/e$a;->a(Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;)Lcom/pushwoosh/notification/handlers/message/system/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/notification/handlers/message/system/e$a;->a()Lcom/pushwoosh/notification/handlers/message/system/e;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageSystemChain()Lcom/pushwoosh/internal/chain/Chain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;->a:Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;

    iget-object v0, v0, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;->b:Lcom/pushwoosh/internal/chain/Chain;

    return-object v0
.end method

.method public static init()V
    .locals 2

    sget-object v0, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;->a:Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;

    invoke-static {}, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;->a()Lcom/pushwoosh/internal/chain/Chain;

    move-result-object v1

    iput-object v1, v0, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;->b:Lcom/pushwoosh/internal/chain/Chain;

    return-void
.end method
