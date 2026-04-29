.class Lcom/pushwoosh/inapp/view/inline/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/view/inline/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/inline/c$a;->a:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/pushwoosh/inapp/view/inline/c$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(ZLcom/pushwoosh/inapp/view/inline/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/inline/c$a;-><init>(Z)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/inline/c$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pushwoosh/inapp/view/inline/c$a;->a:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/inline/c$a;->a:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
