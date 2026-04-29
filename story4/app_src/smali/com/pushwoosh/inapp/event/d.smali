.class public Lcom/pushwoosh/inapp/event/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/Event;


# instance fields
.field private a:Lcom/pushwoosh/inapp/e/b/b;

.field private b:Lcom/pushwoosh/exception/PushwooshException;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/e/b/b;Lcom/pushwoosh/exception/PushwooshException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/event/d;->a:Lcom/pushwoosh/inapp/e/b/b;

    iput-object p2, p0, Lcom/pushwoosh/inapp/event/d;->b:Lcom/pushwoosh/exception/PushwooshException;

    return-void
.end method


# virtual methods
.method public a()Lcom/pushwoosh/inapp/e/b/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/event/d;->a:Lcom/pushwoosh/inapp/e/b/b;

    return-object v0
.end method

.method public b()Lcom/pushwoosh/exception/PushwooshException;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/event/d;->b:Lcom/pushwoosh/exception/PushwooshException;

    return-object v0
.end method
