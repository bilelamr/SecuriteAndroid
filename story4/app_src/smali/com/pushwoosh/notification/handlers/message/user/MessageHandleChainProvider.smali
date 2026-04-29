.class public Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;


# instance fields
.field private b:Lcom/pushwoosh/internal/chain/Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;

    invoke-direct {v0}, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;-><init>()V

    sput-object v0, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;->a:Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;

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
            "Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/notification/handlers/message/user/a$a;

    invoke-direct {v0}, Lcom/pushwoosh/notification/handlers/message/user/a$a;-><init>()V

    new-instance v1, Lcom/pushwoosh/notification/handlers/message/user/b;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/message/user/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/message/user/a$a;->a(Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;)Lcom/pushwoosh/notification/handlers/message/user/a$a;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/notification/handlers/message/user/d;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/message/user/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/message/user/a$a;->a(Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;)Lcom/pushwoosh/notification/handlers/message/user/a$a;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/notification/handlers/message/user/c;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/message/user/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/message/user/a$a;->a(Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;)Lcom/pushwoosh/notification/handlers/message/user/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/notification/handlers/message/user/a$a;->a()Lcom/pushwoosh/notification/handlers/message/user/a;

    move-result-object v0

    return-object v0
.end method

.method public static getHandleProcessor()Lcom/pushwoosh/internal/chain/Chain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;->a:Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;

    iget-object v0, v0, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;->b:Lcom/pushwoosh/internal/chain/Chain;

    return-object v0
.end method

.method public static init()V
    .locals 2

    sget-object v0, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;->a:Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;

    invoke-static {}, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;->a()Lcom/pushwoosh/internal/chain/Chain;

    move-result-object v1

    iput-object v1, v0, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;->b:Lcom/pushwoosh/internal/chain/Chain;

    return-void
.end method
