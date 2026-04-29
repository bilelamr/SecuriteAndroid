.class public Lcom/facebook/react/views/picker/ReactPicker;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "ReactPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    }
.end annotation


# instance fields
.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mMode:I

.field private mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

.field private mPrimaryColor:Ljava/lang/Integer;

.field private mStagedAdapter:Landroid/widget/SpinnerAdapter;

.field private mStagedSelection:Ljava/lang/Integer;

.field private final measureAndLayout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 30
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 75
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 59
    iput p2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/views/picker/ReactPicker;)Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    return-object p0
.end method


# virtual methods
.method commitStagedData()V
    .locals 5

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 136
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    if-eq v2, v4, :cond_0

    .line 138
    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 142
    invoke-virtual {p0, v1, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 143
    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedAdapter:Landroid/widget/SpinnerAdapter;

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 148
    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public getMode()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    return v0
.end method

.method public getOnSelectListener()Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    return-object v0
.end method

.method public getPrimaryColor()Ljava/lang/Integer;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mPrimaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 98
    invoke-super/range {p0 .. p5}, Landroid/widget/Spinner;->onLayout(ZIIII)V

    .line 104
    invoke-virtual {p0}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/widget/Spinner;->requestLayout()V

    .line 93
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnSelectListener(Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    return-void
.end method

.method public setPrimaryColor(Ljava/lang/Integer;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mPrimaryColor:Ljava/lang/Integer;

    return-void
.end method

.method setStagedAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedAdapter:Landroid/widget/SpinnerAdapter;

    return-void
.end method

.method setStagedSelection(I)V
    .locals 0

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    return-void
.end method
