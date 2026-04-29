.class public Lcom/pushwoosh/BootReceiver$DeviceBootedEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceBootedEvent"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/BootReceiver$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/BootReceiver$DeviceBootedEvent;-><init>()V

    return-void
.end method
