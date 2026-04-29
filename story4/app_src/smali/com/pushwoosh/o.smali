.class final synthetic Lcom/pushwoosh/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# instance fields
.field private final a:Lcom/pushwoosh/Pushwoosh;

.field private final b:Lcom/pushwoosh/function/Callback;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/Pushwoosh;Lcom/pushwoosh/function/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/o;->a:Lcom/pushwoosh/Pushwoosh;

    iput-object p2, p0, Lcom/pushwoosh/o;->b:Lcom/pushwoosh/function/Callback;

    return-void
.end method

.method public static a(Lcom/pushwoosh/Pushwoosh;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/internal/event/EventListener;
    .locals 1

    new-instance v0, Lcom/pushwoosh/o;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/o;-><init>(Lcom/pushwoosh/Pushwoosh;Lcom/pushwoosh/function/Callback;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/o;->a:Lcom/pushwoosh/Pushwoosh;

    iget-object v1, p0, Lcom/pushwoosh/o;->b:Lcom/pushwoosh/function/Callback;

    check-cast p1, Lcom/pushwoosh/inapp/event/b;

    invoke-static {v0, v1, p1}, Lcom/pushwoosh/Pushwoosh;->a(Lcom/pushwoosh/Pushwoosh;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inapp/event/b;)V

    return-void
.end method
