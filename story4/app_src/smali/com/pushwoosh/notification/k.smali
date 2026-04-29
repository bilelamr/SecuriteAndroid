.class final synthetic Lcom/pushwoosh/notification/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# instance fields
.field private final a:Lcom/pushwoosh/notification/j;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/notification/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/notification/k;->a:Lcom/pushwoosh/notification/j;

    return-void
.end method

.method public static a(Lcom/pushwoosh/notification/j;)Lcom/pushwoosh/internal/event/EventListener;
    .locals 1

    new-instance v0, Lcom/pushwoosh/notification/k;

    invoke-direct {v0, p0}, Lcom/pushwoosh/notification/k;-><init>(Lcom/pushwoosh/notification/j;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/k;->a:Lcom/pushwoosh/notification/j;

    check-cast p1, Lcom/pushwoosh/notification/event/DeregistrationSuccessEvent;

    invoke-static {v0, p1}, Lcom/pushwoosh/notification/j;->a(Lcom/pushwoosh/notification/j;Lcom/pushwoosh/notification/event/DeregistrationSuccessEvent;)V

    return-void
.end method
