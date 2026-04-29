.class public final Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;
.super Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;
.source "InboxViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder<",
        "Lcom/pushwoosh/inbox/data/InboxMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private attachmentClickListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;",
            "Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorSchemeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentClickListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget v0, Lcom/pushwoosh/inbox/ui/R$layout;->pw_item_inbox:I

    invoke-direct {p0, v0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;-><init>(ILandroid/view/ViewGroup;Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;)V

    iput-object p3, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    .line 59
    iput-object p4, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->attachmentClickListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getColorSchemeProvider$p(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;)Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    return-object p0
.end method

.method private final getInboxLabelText(Ljava/lang/String;Landroid/content/res/ColorStateList;Ljava/lang/String;Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;
    .locals 6

    .line 118
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 122
    sget v5, Lcom/pushwoosh/inbox/ui/R$style;->TextAppearance_Inbox_InboxTitle:I

    .line 121
    invoke-direct {p0, v4, v5, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->getTextAppearanceSpan(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/text/style/TextAppearanceSpan;

    move-result-object p2

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3, p2, v2, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, "  "

    .line 126
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    if-eqz p3, :cond_1

    .line 128
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 129
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 131
    sget v3, Lcom/pushwoosh/inbox/ui/R$style;->TextAppearance_Inbox_InboxDate:I

    .line 130
    invoke-direct {p0, p2, v3, p4}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->getTextAppearanceSpan(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/text/style/TextAppearanceSpan;

    move-result-object p2

    .line 133
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, " "

    .line 135
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-object v0
.end method

.method private final getTextAppearanceSpan(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/text/style/TextAppearanceSpan;
    .locals 7

    .line 141
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v0, p1, p2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 142
    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v0}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v3

    .line 144
    invoke-virtual {v0}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v4

    move-object v1, p1

    move-object v5, p3

    move-object v6, p3

    .line 142
    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object p1
.end method


# virtual methods
.method public fillView(Lcom/pushwoosh/inbox/data/InboxMessage;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    invoke-interface {v1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;->getCellBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/pushwoosh/inbox/ui/R$id;->inboxLabelTextView:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v1, "itemView.inboxLabelTextView"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    invoke-interface {v3}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;->getTitleColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 69
    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getSendDate()Ljava/util/Date;

    move-result-object v4

    const-string v5, "model.sendDate"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/pushwoosh/inbox/ui/utils/DateExtensionKt;->parseToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 70
    iget-object v5, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    invoke-interface {v5}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;->getDateColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 67
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->getInboxLabelText(Ljava/lang/String;Landroid/content/res/ColorStateList;Ljava/lang/String;Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/pushwoosh/inbox/ui/R$id;->inboxDescriptionTextView:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    invoke-interface {v2}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;->getDescriptionColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 72
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/pushwoosh/inbox/ui/R$id;->inboxStatusImageView:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/inbox/ui/presentation/view/view/TintableImageView;

    iget-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    invoke-interface {v2}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;->getImageColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/pushwoosh/inbox/ui/presentation/view/view/TintableImageView;->setColorFilter(Landroid/content/res/ColorStateList;)V

    .line 74
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/pushwoosh/inbox/ui/R$id;->inboxDescriptionTextView:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v2, "itemView.inboxDescriptionTextView"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/pushwoosh/inbox/ui/R$id;->inboxStatusImageView:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/inbox/ui/presentation/view/view/TintableImageView;

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getType()Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object v3

    const-string v4, "model.type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolderKt;->getResource(Lcom/pushwoosh/inbox/data/InboxMessageType;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 77
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/pushwoosh/inbox/ui/R$id;->inboxLabelTextView:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->isActionPerformed()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 78
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/pushwoosh/inbox/ui/R$id;->inboxStatusImageView:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/inbox/ui/presentation/view/view/TintableImageView;

    const-string v3, "itemView.inboxStatusImageView"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/pushwoosh/inbox/ui/R$id;->inboxLabelTextView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->isSelected()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 79
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/pushwoosh/inbox/ui/R$id;->inboxDescriptionTextView:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/pushwoosh/inbox/ui/R$id;->inboxLabelTextView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 81
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 82
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 84
    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 85
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 86
    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    invoke-interface {v1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 87
    new-instance v1, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$1;

    invoke-direct {v1, p0}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$1;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    goto :goto_0

    .line 99
    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 100
    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 102
    :goto_0
    invoke-static {}, Lcom/bumptech/glide/request/RequestOptions;->circleCropTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 103
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/pushwoosh/inbox/ui/R$id;->inboxImageView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 105
    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getBannerUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "itemView.inboxBannerImage"

    if-eqz p1, :cond_2

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/pushwoosh/inbox/ui/R$id;->inboxBannerImage:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$2;

    invoke-direct {v2, p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$2;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/pushwoosh/inbox/ui/R$id;->inboxBannerImage:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 110
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 111
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/pushwoosh/inbox/ui/R$id;->inboxBannerImage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    const-string p2, "Glide.with(itemView.cont\u2026temView.inboxBannerImage)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/pushwoosh/inbox/ui/R$id;->inboxBannerImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic fillView(Ljava/lang/Object;I)V
    .locals 0

    .line 55
    check-cast p1, Lcom/pushwoosh/inbox/data/InboxMessage;

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->fillView(Lcom/pushwoosh/inbox/data/InboxMessage;I)V

    return-void
.end method

.method public final getAttachmentClickListener()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->attachmentClickListener:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final setAttachmentClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->attachmentClickListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method
