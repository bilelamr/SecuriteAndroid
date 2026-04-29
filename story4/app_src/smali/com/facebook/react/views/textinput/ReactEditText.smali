.class public Lcom/facebook/react/views/textinput/ReactEditText;
.super Landroid/widget/EditText;
.source "ReactEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;,
        Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;
    }
.end annotation


# static fields
.field private static final sKeyListener:Landroid/text/method/KeyListener;


# instance fields
.field private mBlurOnSubmit:Ljava/lang/Boolean;

.field private mContainsImages:Z

.field private mContentSizeWatcher:Lcom/facebook/react/views/textinput/ContentSizeWatcher;

.field private mDefaultGravityHorizontal:I

.field private mDefaultGravityVertical:I

.field private mDetectScrollMovement:Z

.field private mDisableFullscreen:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsJSSettingFocus:Z

.field private mIsSettingTextFromJS:Z

.field private final mKeyListener:Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mMostRecentEventCount:I

.field private mNativeEventCount:I

.field private mOnKeyPress:Z

.field private mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

.field private mReturnKeyType:Ljava/lang/String;

.field private mScrollWatcher:Lcom/facebook/react/views/textinput/ScrollWatcher;

.field private mSelectionWatcher:Lcom/facebook/react/views/textinput/SelectionWatcher;

.field private mStagedInputType:I

.field private mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

.field private mTextWatcherDelegator:Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    invoke-static {}, Landroid/text/method/QwertyKeyListener;->getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/views/textinput/ReactEditText;->sKeyListener:Landroid/text/method/KeyListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDetectScrollMovement:Z

    .line 81
    iput-boolean p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mOnKeyPress:Z

    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 92
    new-instance v0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    .line 94
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 96
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDefaultGravityHorizontal:I

    .line 97
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDefaultGravityVertical:I

    .line 98
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mNativeEventCount:I

    .line 99
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mMostRecentEventCount:I

    .line 100
    iput-boolean p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    .line 101
    iput-boolean p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsJSSettingFocus:Z

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mBlurOnSubmit:Ljava/lang/Boolean;

    .line 103
    iput-boolean p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDisableFullscreen:Z

    .line 104
    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    .line 105
    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextWatcherDelegator:Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    .line 106
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    .line 107
    new-instance p1, Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;

    invoke-direct {p1}, Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mKeyListener:Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;

    .line 108
    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mScrollWatcher:Lcom/facebook/react/views/textinput/ScrollWatcher;

    .line 109
    new-instance p1, Lcom/facebook/react/views/text/TextAttributes;

    invoke-direct {p1}, Lcom/facebook/react/views/text/TextAttributes;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    .line 111
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->applyTextAttributes()V

    .line 115
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    const/16 v1, 0x1b

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1, v0}, Landroid/widget/EditText;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/views/textinput/ReactEditText;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/react/views/textinput/ReactEditText;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->onContentSizeChange()V

    return-void
.end method

.method static synthetic access$400()Landroid/text/method/KeyListener;
    .locals 1

    .line 55
    sget-object v0, Lcom/facebook/react/views/textinput/ReactEditText;->sKeyListener:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method private getTextWatcherDelegator()Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextWatcherDelegator:Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;-><init>(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/views/textinput/ReactEditText$1;)V

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextWatcherDelegator:Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextWatcherDelegator:Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    return-object v0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private isMultiline()Z
    .locals 2

    .line 481
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSecureText()Z
    .locals 1

    .line 486
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    and-int/lit16 v0, v0, 0x90

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private manageSpans(Landroid/text/SpannableStringBuilder;)V
    .locals 8

    .line 424
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 425
    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_3

    .line 427
    aget-object v1, v0, v3

    instance-of v1, v1, Lcom/facebook/react/views/text/ReactSpan;

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-interface {v1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x21

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 435
    :cond_1
    aget-object v1, v0, v3

    .line 436
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    aget-object v4, v0, v3

    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 437
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-interface {v4, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 438
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 442
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-interface {v6, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 443
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6, p1, v2, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->sameTextForSpan(Landroid/text/Editable;Landroid/text/SpannableStringBuilder;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 444
    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onContentSizeChange()V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContentSizeWatcher:Lcom/facebook/react/views/textinput/ContentSizeWatcher;

    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0}, Lcom/facebook/react/views/textinput/ContentSizeWatcher;->onLayout()V

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->setIntrinsicContentSize()V

    return-void
.end method

.method private static sameTextForSpan(Landroid/text/Editable;Landroid/text/SpannableStringBuilder;II)Z
    .locals 3

    .line 454
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gt p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-le p3, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    .line 458
    invoke-interface {p0, p2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private setIntrinsicContentSize()V
    .locals 3

    .line 501
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 502
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 503
    new-instance v1, Lcom/facebook/react/views/textinput/ReactTextInputLocalData;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/textinput/ReactTextInputLocalData;-><init>(Landroid/widget/EditText;)V

    .line 504
    invoke-virtual {p0}, Landroid/widget/EditText;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->setViewLocalData(ILjava/lang/Object;)V

    return-void
.end method

.method private showSoftKeyboard()Z
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method private updateImeOptions()V
    .locals 9

    .line 526
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReturnKeyType:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x6

    if-eqz v0, :cond_1

    const/4 v7, -0x1

    .line 527
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "send"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v8, "none"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v8, "next"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v8, "done"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v8, "go"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v8, "search"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v8, "previous"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x3

    goto :goto_3

    :pswitch_1
    const/4 v1, 0x7

    goto :goto_3

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_3

    :pswitch_3
    const/4 v1, 0x5

    goto :goto_3

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_3

    :cond_1
    :goto_2
    :pswitch_5
    const/4 v1, 0x6

    .line 552
    :goto_3
    :pswitch_6
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDisableFullscreen:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x2000000

    or-int/2addr v0, v1

    .line 553
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_4

    .line 555
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4bec4509 -> :sswitch_6
        -0x36059a58 -> :sswitch_5
        0xce8 -> :sswitch_4
        0x2f2382 -> :sswitch_3
        0x338af3 -> :sswitch_2
        0x33af38 -> :sswitch_1
        0x35cf88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    .line 226
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getTextWatcherDelegator()Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected applyTextAttributes()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 692
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveLetterSpacing()F

    move-result v0

    .line 694
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setLetterSpacing(F)V

    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 200
    invoke-super {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 201
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->hideSoftKeyboard()V

    return-void
.end method

.method clearFocusFromJS()V
    .locals 0

    .line 370
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->clearFocus()V

    return-void
.end method

.method commitStagedInputType()V
    .locals 3

    .line 331
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    iget v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    if-eq v0, v1, :cond_0

    .line 332
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 333
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 334
    iget v2, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    invoke-virtual {p0, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setInputType(I)V

    .line 335
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelection(II)V

    :cond_0
    return-void
.end method

.method public getBlurOnSubmit()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mBlurOnSubmit:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isMultiline()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDisableFullscreenUI()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDisableFullscreen:Z

    return v0
.end method

.method public getReturnKeyType()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReturnKeyType:Ljava/lang/String;

    return-object v0
.end method

.method getStagedInputType()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    return v0
.end method

.method public incrementAndGetEventCounter()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mNativeEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mNativeEventCount:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 575
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 577
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 578
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 579
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 580
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public isLayoutRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public maybeSetText(Lcom/facebook/react/views/text/ReactTextUpdate;)V
    .locals 4

    .line 380
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isSecureText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJsEventCounter()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mMostRecentEventCount:I

    .line 387
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mMostRecentEventCount:I

    iget v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mNativeEventCount:I

    if-ge v0, v1, :cond_1

    return-void

    .line 395
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 396
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 397
    invoke-direct {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->manageSpans(Landroid/text/SpannableStringBuilder;)V

    .line 398
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    const/4 v1, 0x1

    .line 399
    iput-boolean v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    .line 403
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 409
    :goto_0
    iput-boolean v2, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    .line 410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 411
    invoke-virtual {p0}, Landroid/widget/EditText;->getBreakStrategy()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 412
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBreakStrategy(I)V

    :cond_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 613
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 614
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 616
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 617
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 618
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onAttachedToWindow()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 184
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 185
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    iget-boolean v2, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mOnKeyPress:Z

    if-eqz v2, :cond_0

    .line 187
    new-instance v2, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;

    invoke-direct {v2, v1, v0, p0}, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V

    move-object v1, v2

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isMultiline()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getBlurOnSubmit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    return-object v1
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 589
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 590
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 592
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 593
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 594
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onDetachedFromWindow()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 4

    .line 625
    invoke-super {p0}, Landroid/widget/EditText;->onFinishTemporaryDetach()V

    .line 626
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 628
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 629
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 630
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onFinishTemporaryDetach()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 277
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mSelectionWatcher:Lcom/facebook/react/views/textinput/SelectionWatcher;

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/views/textinput/SelectionWatcher;->onSelectionChanged(II)V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isMultiline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->hideSoftKeyboard()V

    const/4 p1, 0x1

    return p1

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->onContentSizeChange()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    .line 177
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mScrollWatcher:Lcom/facebook/react/views/textinput/ScrollWatcher;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/react/views/textinput/ScrollWatcher;->onScrollChanged(IIII)V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 268
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 269
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mSelectionWatcher:Lcom/facebook/react/views/textinput/SelectionWatcher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mSelectionWatcher:Lcom/facebook/react/views/textinput/SelectionWatcher;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/views/textinput/SelectionWatcher;->onSelectionChanged(II)V

    :cond_0
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 4

    .line 601
    invoke-super {p0}, Landroid/widget/EditText;->onStartTemporaryDetach()V

    .line 602
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 604
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 605
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 606
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onStartTemporaryDetach()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDetectScrollMovement:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->canScrollVertically(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 149
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 155
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDetectScrollMovement:Z

    goto :goto_0

    .line 141
    :cond_2
    iput-boolean v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDetectScrollMovement:Z

    .line 144
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 159
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 238
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    .line 239
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getTextWatcherDelegator()Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 208
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsJSSettingFocus:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 214
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 215
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    .line 216
    invoke-virtual {p0}, Landroid/widget/EditText;->getShowSoftInputOnFocus()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->showSoftKeyboard()Z

    :cond_2
    return p1
.end method

.method public requestFocusFromJS()V
    .locals 1

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsJSSettingFocus:Z

    .line 365
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsJSSettingFocus:Z

    return-void
.end method

.method public setAllowFontScaling(Z)V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextAttributes;->getAllowFontScaling()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setAllowFontScaling(Z)V

    .line 668
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->applyTextAttributes()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBackgroundColor(I)V

    return-void
.end method

.method public setBlurOnSubmit(Ljava/lang/Boolean;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mBlurOnSubmit:Ljava/lang/Boolean;

    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderColor(IFF)V

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(F)V

    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(FI)V

    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderWidth(IF)V

    return-void
.end method

.method public setContentSizeWatcher(Lcom/facebook/react/views/textinput/ContentSizeWatcher;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContentSizeWatcher:Lcom/facebook/react/views/textinput/ContentSizeWatcher;

    return-void
.end method

.method public setDisableFullscreenUI(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDisableFullscreen:Z

    .line 306
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->updateImeOptions()V

    return-void
.end method

.method public setFontSize(F)V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setFontSize(F)V

    .line 674
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->applyTextAttributes()V

    return-void
.end method

.method setGravityHorizontal(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 509
    iget p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDefaultGravityHorizontal:I

    .line 512
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x8

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 511
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method setGravityVertical(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 518
    iget p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDefaultGravityVertical:I

    .line 520
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 341
    invoke-super {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 342
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 343
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    .line 345
    invoke-super {p0, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 351
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isMultiline()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mKeyListener:Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;->setInputType(I)V

    .line 359
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mKeyListener:Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setLetterSpacingPt(F)V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setLetterSpacing(F)V

    .line 662
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->applyTextAttributes()V

    return-void
.end method

.method public setMaxFontSizeMultiplier(F)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextAttributes;->getMaxFontSizeMultiplier()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setMaxFontSizeMultiplier(F)V

    .line 680
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->applyTextAttributes()V

    :cond_0
    return-void
.end method

.method public setMostRecentEventCount(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mMostRecentEventCount:I

    return-void
.end method

.method public setOnKeyPress(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mOnKeyPress:Z

    return-void
.end method

.method public setReturnKeyType(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReturnKeyType:Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->updateImeOptions()V

    return-void
.end method

.method public setScrollWatcher(Lcom/facebook/react/views/textinput/ScrollWatcher;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mScrollWatcher:Lcom/facebook/react/views/textinput/ScrollWatcher;

    return-void
.end method

.method public setSelection(II)V
    .locals 2

    .line 259
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mMostRecentEventCount:I

    iget v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mNativeEventCount:I

    if-ge v0, v1, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method

.method public setSelectionWatcher(Lcom/facebook/react/views/textinput/SelectionWatcher;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mSelectionWatcher:Lcom/facebook/react/views/textinput/SelectionWatcher;

    return-void
.end method

.method setStagedInputType(I)V
    .locals 0

    .line 327
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .line 561
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_1

    .line 562
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 563
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 564
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 565
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 570
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
