.class Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Lcom/facebook/react/views/textinput/SelectionWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReactSelectionWatcher"
.end annotation


# instance fields
.field private mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mPreviousSelectionEnd:I

.field private mPreviousSelectionStart:I

.field private mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;


# direct methods
.method public constructor <init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 0

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iput-object p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 963
    invoke-virtual {p2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    .line 964
    const-class p2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-void
.end method


# virtual methods
.method public onSelectionChanged(II)V
    .locals 3

    .line 975
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 976
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 978
    iget p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mPreviousSelectionStart:I

    if-ne p2, v0, :cond_0

    iget p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mPreviousSelectionEnd:I

    if-eq p2, p1, :cond_1

    .line 979
    :cond_0
    iget-object p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;

    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 981
    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    invoke-direct {v1, v2, v0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;-><init>(III)V

    .line 979
    invoke-virtual {p2, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 986
    iput v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mPreviousSelectionStart:I

    .line 987
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mPreviousSelectionEnd:I

    :cond_1
    return-void
.end method
