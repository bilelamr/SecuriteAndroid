.class Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;
.super Landroid/view/View$BaseSavedState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/view/inline/InlineInAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Z

.field b:Lcom/pushwoosh/inapp/view/inline/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b$1;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b$1;-><init>()V

    sput-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;->a:Z

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/c$a;

    invoke-direct {v0, p1}, Lcom/pushwoosh/inapp/view/inline/c$a;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;->b:Lcom/pushwoosh/inapp/view/inline/c$a;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pushwoosh/inapp/view/inline/InlineInAppView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;->a:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;->b:Lcom/pushwoosh/inapp/view/inline/c$a;

    invoke-virtual {p2, p1}, Lcom/pushwoosh/inapp/view/inline/c$a;->a(Landroid/os/Parcel;)V

    return-void
.end method
