.class final synthetic Lcom/pushwoosh/notification/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# instance fields
.field private final a:Lcom/pushwoosh/notification/f;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/notification/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/notification/h;->a:Lcom/pushwoosh/notification/f;

    return-void
.end method

.method public static a(Lcom/pushwoosh/notification/f;)Lcom/pushwoosh/internal/event/EventListener;
    .locals 1

    new-instance v0, Lcom/pushwoosh/notification/h;

    invoke-direct {v0, p0}, Lcom/pushwoosh/notification/h;-><init>(Lcom/pushwoosh/notification/f;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/h;->a:Lcom/pushwoosh/notification/f;

    check-cast p1, Lcom/pushwoosh/notification/event/RegistrationErrorEvent;

    invoke-static {v0, p1}, Lcom/pushwoosh/notification/f;->a(Lcom/pushwoosh/notification/f;Lcom/pushwoosh/notification/event/RegistrationErrorEvent;)V

    return-void
.end method
