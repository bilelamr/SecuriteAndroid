.class Lcom/swmansion/rnscreens/ScreenContainer$3;
.super Ljava/lang/Object;
.source "ScreenContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenContainer;->tryCommitTransaction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenContainer;

.field final synthetic val$transaction:Landroidx/fragment/app/FragmentTransaction;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenContainer;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer$3;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenContainer$3;->val$transaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer$3;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-static {v0}, Lcom/swmansion/rnscreens/ScreenContainer;->access$200(Lcom/swmansion/rnscreens/ScreenContainer;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer$3;->val$transaction:Landroidx/fragment/app/FragmentTransaction;

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer$3;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/swmansion/rnscreens/ScreenContainer;->access$202(Lcom/swmansion/rnscreens/ScreenContainer;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    return-void
.end method
