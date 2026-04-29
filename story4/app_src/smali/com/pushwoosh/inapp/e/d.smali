.class final synthetic Lcom/pushwoosh/inapp/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# instance fields
.field private final a:Lcom/pushwoosh/internal/network/RequestManager;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/internal/network/RequestManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/d;->a:Lcom/pushwoosh/internal/network/RequestManager;

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/network/RequestManager;)Lcom/pushwoosh/internal/event/EventListener;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/e/d;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/e/d;-><init>(Lcom/pushwoosh/internal/network/RequestManager;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/d;->a:Lcom/pushwoosh/internal/network/RequestManager;

    check-cast p1, Lcom/pushwoosh/inapp/view/d;

    invoke-static {v0, p1}, Lcom/pushwoosh/inapp/e/c;->a(Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/inapp/view/d;)V

    return-void
.end method
