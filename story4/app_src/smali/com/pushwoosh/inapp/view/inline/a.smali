.class final synthetic Lcom/pushwoosh/inapp/view/inline/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/view/inline/k$a;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/a;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    iput p2, p0, Lcom/pushwoosh/inapp/view/inline/a;->b:I

    iput p3, p0, Lcom/pushwoosh/inapp/view/inline/a;->c:I

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;II)Lcom/pushwoosh/inapp/view/inline/k$a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/pushwoosh/inapp/view/inline/a;-><init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;II)V

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/a;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    iget v1, p0, Lcom/pushwoosh/inapp/view/inline/a;->b:I

    iget v2, p0, Lcom/pushwoosh/inapp/view/inline/a;->c:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;IIII)V

    return-void
.end method
