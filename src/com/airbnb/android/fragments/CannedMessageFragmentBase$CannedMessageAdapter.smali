.class public Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CannedMessageFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/CannedMessageFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CannedMessageAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 353
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->deleteSelectedCannedMessage()V

    return-void
.end method

.method private deleteSelectedCannedMessage()V
    .registers 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # getter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$600(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # getter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mMsgIndexToDelete:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$800(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->notifyDataSetChanged()V

    .line 402
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # getter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;
    invoke-static {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$600(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # getter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHostMode:Z
    invoke-static {v2}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$900(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/utils/SharedPrefsHelper;->saveCannedMessages(Landroid/content/Context;Ljava/util/List;Z)V

    .line 403
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingPage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "delete_canned_message"

    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # invokes: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingRole()Ljava/lang/String;
    invoke-static {v2}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$100(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/CannedMessageAnalytics;->trackCannedMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # getter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$600(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->hasSavableInput()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_13
    add-int/2addr v0, v1

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 364
    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v2, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->displayAddNewMsg(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 365
    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    iget-object v2, v2, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .end local p1    # "position":I
    :goto_14
    return-object v2

    .line 367
    .restart local p1    # "position":I
    :cond_15
    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # getter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;
    invoke-static {v2}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$600(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->hasSavableInput()Z

    move-result v3

    if-eqz v3, :cond_25

    add-int/lit8 p1, p1, -0x1

    .end local p1    # "position":I
    :cond_25
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "cannedMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    const v3, 0x7f0e00c6

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "responderToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # getter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mOtherUserName:Ljava/lang/String;
    invoke-static {v2}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$700(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_14
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 374
    if-nez p2, :cond_13

    .line 375
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f030133

    invoke-virtual {v5, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 377
    :cond_13
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v5, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->displayAddNewMsg(I)Z

    move-result v1

    .line 379
    .local v1, "displayAddNewMsg":Z
    if-eqz v1, :cond_66

    iget-object v5, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    const v7, 0x7f0e00c7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v6

    invoke-virtual {v5, v7, v8}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 383
    .local v2, "displayText":Ljava/lang/CharSequence;
    :goto_30
    const v5, 0x7f08034a

    invoke-static {p2, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 384
    .local v4, "msgTextView":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v5, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v1, :cond_74

    const v5, 0x7f0a00aa

    :goto_47
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 387
    const v5, 0x7f080349

    invoke-static {p2, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 388
    .local v0, "deleteBtn":Landroid/widget/ImageView;
    new-instance v5, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter$1;-><init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    if-eqz v1, :cond_78

    const/4 v5, 0x4

    :goto_62
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    return-object p2

    .line 379
    .end local v0    # "deleteBtn":Landroid/widget/ImageView;
    .end local v2    # "displayText":Ljava/lang/CharSequence;
    .end local v4    # "msgTextView":Landroid/widget/TextView;
    :cond_66
    iget-object v5, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    const v7, 0x7f0e00b6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v6

    invoke-virtual {v5, v7, v8}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    .line 385
    .restart local v2    # "displayText":Ljava/lang/CharSequence;
    .restart local v4    # "msgTextView":Landroid/widget/TextView;
    :cond_74
    const v5, 0x7f0a00ac

    goto :goto_47

    .restart local v0    # "deleteBtn":Landroid/widget/ImageView;
    :cond_78
    move v5, v6

    .line 395
    goto :goto_62
.end method
