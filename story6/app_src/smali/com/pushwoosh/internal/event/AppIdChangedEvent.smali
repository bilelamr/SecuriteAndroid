.class public Lcom/pushwoosh/internal/event/AppIdChangedEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/Event;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/event/AppIdChangedEvent;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/pushwoosh/internal/event/AppIdChangedEvent;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNewAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/event/AppIdChangedEvent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOldAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/event/AppIdChangedEvent;->b:Ljava/lang/String;

    return-object v0
.end method
