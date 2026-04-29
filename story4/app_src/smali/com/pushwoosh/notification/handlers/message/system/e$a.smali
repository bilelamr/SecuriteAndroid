.class public final Lcom/pushwoosh/notification/handlers/message/system/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/notification/handlers/message/system/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/notification/handlers/message/system/e$a;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method a(Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;)Lcom/pushwoosh/notification/handlers/message/system/e$a;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/message/system/e$a;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lcom/pushwoosh/notification/handlers/message/system/e;
    .locals 3

    new-instance v0, Lcom/pushwoosh/notification/handlers/message/system/e;

    iget-object v1, p0, Lcom/pushwoosh/notification/handlers/message/system/e$a;->a:Ljava/util/Collection;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pushwoosh/notification/handlers/message/system/e;-><init>(Ljava/util/Collection;Lcom/pushwoosh/notification/handlers/message/system/e$1;)V

    return-object v0
.end method
