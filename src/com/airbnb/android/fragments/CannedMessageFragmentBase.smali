.class public abstract Lcom/airbnb/android/fragments/CannedMessageFragmentBase;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "CannedMessageFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;
    }
.end annotation


# static fields
.field private static final DELAY_HIGHLIGHT_TEXT:I = 0x96

.field private static final DIALOG_DELETE_MSG:I = 0x190

.field public static final ROTATE_DEGREE:I = 0x2d

.field private static final SAVED_STATE_SAVABLE_TEXT:Ljava/lang/String; = "savable_text"


# instance fields
.field private mCannedMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCannedMessagesContainerHeight:I

.field protected mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

.field protected mCannedMsgButton:Landroid/widget/ImageView;

.field protected mCannedMsgListView:Landroid/widget/ListView;

.field protected mCannedMsgPlus:Landroid/widget/ImageView;

.field private mFooter:Landroid/view/View;

.field private mHasSavableText:Z

.field private mHostMode:Z

.field protected mInputEditText:Landroid/widget/EditText;

.field private mInputTextWatcher:Landroid/text/TextWatcher;

.field private mKeyboardUp:Z

.field private mMsgIndexToDelete:I

.field private mOtherUserName:Ljava/lang/String;

.field protected mShouldAutoHighlightInputText:Z

.field private mStatusBarActionBarHeight:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;

    .line 349
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingRole()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->updateCannedMsgButtonColor()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHasSavableText:Z

    return v0
.end method

.method static synthetic access$302(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHasSavableText:Z

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    .prologue
    .line 33
    iget v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessagesContainerHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mStatusBarActionBarHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mOtherUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    .prologue
    .line 33
    iget v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mMsgIndexToDelete:I

    return v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHostMode:Z

    return v0
.end method

.method private getTrackingRole()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHostMode:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "host"

    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v0, "guest"

    goto :goto_7
.end method

.method private updateCannedMsgButtonColor()V
    .registers 7

    .prologue
    const v2, 0x7f0a002b

    const v3, 0x7f0a001a

    .line 172
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->hasUserInput()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->isCannedMessagesHidden()Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v0, 0x1

    .line 173
    .local v0, "active":Z
    :goto_13
    iget-object v4, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgButton:Landroid/widget/ImageView;

    const v5, 0x7f0200f3

    if-eqz v0, :cond_33

    move v1, v2

    :goto_1b
    invoke-static {v5, v1}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgPlus:Landroid/widget/ImageView;

    const v4, 0x7f0200f4

    if-eqz v0, :cond_35

    :goto_29
    invoke-static {v4, v2}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void

    .line 172
    .end local v0    # "active":Z
    :cond_31
    const/4 v0, 0x0

    goto :goto_13

    .restart local v0    # "active":Z
    :cond_33
    move v1, v3

    .line 173
    goto :goto_1b

    :cond_35
    move v2, v3

    .line 174
    goto :goto_29
.end method


# virtual methods
.method protected appendCannedMessageToInput(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 315
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "cannedText":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->notifyDataSetChanged()V

    .line 318
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 319
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingPage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "use_canned_message"

    invoke-direct {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingRole()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/CannedMessageAnalytics;->trackCannedMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method protected displayAddNewMsg(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->hasSavableInput()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getRespondNowButtonHeight()I
    .registers 2

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method abstract getTrackingPage()Ljava/lang/String;
.end method

.method protected hasSavableInput()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->hasUserInput()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mOtherUserName:Ljava/lang/String;

    const v3, 0x7f0e00c6

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_3a
    const/4 v0, 0x1

    :cond_3b
    return v0
.end method

.method protected hasUserInput()Z
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected isCannedMessagesHidden()Z
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method abstract isInputTextClearable()Z
.end method

.method protected loadCannedMessages(Z)V
    .registers 4
    .param p1, "hostMode"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHostMode:Z

    .line 216
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    if-nez v0, :cond_7

    .line 230
    :goto_6
    return-void

    .line 219
    :cond_7
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHostMode:Z

    if-eqz v0, :cond_82

    .line 220
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mFooter:Landroid/view/View;

    const v1, 0x7f08034b

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e00c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 221
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mFooter:Landroid/view/View;

    const v1, 0x7f08034c

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e00bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mFooter:Landroid/view/View;

    const v1, 0x7f08034d

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e00b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mFooter:Landroid/view/View;

    const v1, 0x7f08034e

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e00bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mFooter:Landroid/view/View;

    const v1, 0x7f08034f

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e00bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mFooter:Landroid/view/View;

    const v1, 0x7f080350

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e00c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mFooter:Landroid/view/View;

    const v1, 0x7f080351

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e00c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    :cond_82
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHostMode:Z

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->getCannedMessages(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;

    .line 229
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->notifyDataSetChanged()V

    goto/16 :goto_6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_e

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    :goto_6
    return-void

    .line 81
    :pswitch_7
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    # invokes: Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->deleteSelectedCannedMessage()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->access$000(Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;)V

    goto :goto_6

    .line 79
    nop

    :pswitch_data_e
    .packed-switch 0x190
        :pswitch_7
    .end packed-switch
.end method

.method abstract onCannedMessageButtonClicked(Z)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    if-eqz p1, :cond_f

    .line 66
    const-string/jumbo v0, "savable_text"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHasSavableText:Z

    .line 68
    :cond_f
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 409
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroyView()V

    .line 411
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 412
    return-void
.end method

.method protected onInputTextFocus(Z)V
    .registers 6
    .param p1, "hasFocus"    # Z

    .prologue
    .line 332
    if-eqz p1, :cond_2b

    .line 333
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->isCannedMessagesHidden()Z

    move-result v0

    if-nez v0, :cond_13

    .line 334
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgPlus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42340000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 336
    :cond_13
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->setCannedMsgListViewVisibility(I)V

    .line 337
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mShouldAutoHighlightInputText:Z

    if-eqz v0, :cond_2b

    .line 338
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$7;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$7;-><init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mShouldAutoHighlightInputText:Z

    .line 347
    :cond_2b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string/jumbo v0, "savable_text"

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHasSavableText:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method protected saveNewCannedMessage(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 303
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "newMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mOtherUserName:Ljava/lang/String;

    const v2, 0x7f0e00c6

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 307
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 308
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;

    iget-boolean v3, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHostMode:Z

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/utils/SharedPrefsHelper;->saveCannedMessages(Landroid/content/Context;Ljava/util/List;Z)V

    .line 309
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingPage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "save_canned_message"

    invoke-direct {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingRole()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/CannedMessageAnalytics;->trackCannedMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->notifyDataSetChanged()V

    .line 311
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    invoke-static {v1}, Lcom/airbnb/android/utils/MiscUtils;->flashVerticalScrollBar(Landroid/widget/ListView;)V

    .line 312
    return-void
.end method

.method protected setCannedMessagesListViewPaddingHeight(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 259
    .local v0, "rootViewHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 260
    .local v1, "viewHeight":I
    iget v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mStatusBarActionBarHeight:I

    if-lez v2, :cond_39

    iget v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mStatusBarActionBarHeight:I

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getRespondNowButtonHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_39

    const/4 v2, 0x1

    :goto_1c
    iput-boolean v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mKeyboardUp:Z

    .line 261
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mKeyboardUp:Z

    if-eqz v2, :cond_38

    .line 263
    iget v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mStatusBarActionBarHeight:I

    sub-int v2, v0, v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getRespondNowButtonHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessagesContainerHeight:I

    .line 264
    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessagesContainerHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 266
    :cond_38
    return-void

    .line 260
    :cond_39
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method protected setCannedMsgListViewVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 300
    return-void
.end method

.method protected setupCannedMessageAdapter(Landroid/view/View;Lcom/airbnb/android/models/User;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherUser"    # Lcom/airbnb/android/models/User;

    .prologue
    const/4 v3, 0x0

    .line 100
    const v0, 0x7f08048a

    invoke-static {p1, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgButton:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f08048b

    invoke-static {p1, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgPlus:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f08018a

    invoke-static {p1, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    .line 104
    new-instance v0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;-><init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    .line 105
    if-eqz p2, :cond_62

    invoke-virtual {p2}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    :goto_33
    iput-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mOtherUserName:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030134

    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mFooter:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mFooter:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 111
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    new-instance v1, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$1;-><init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    return-void

    .line 105
    :cond_62
    const-string/jumbo v0, ""

    goto :goto_33
.end method

.method protected setupCannedMessageButton()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$2;-><init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;-><init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputTextWatcher:Landroid/text/TextWatcher;

    .line 165
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    return-void
.end method

.method protected setupGlobalLayoutListener(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$5;-><init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$6;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$6;-><init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 255
    return-void
.end method

.method protected showDeleteCannedMsgConfirmationDialog(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->hasSavableInput()Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 p1, p1, -0x1

    .end local p1    # "position":I
    :cond_9
    iput p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mMsgIndexToDelete:I

    .line 324
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessages:Ljava/util/List;

    iget v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mMsgIndexToDelete:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 325
    .local v6, "msgToDelete":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const v3, 0x7f0e085b

    const/16 v4, 0x190

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method protected toggleCannedMessages()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->isCannedMessagesHidden()Z

    move-result v0

    .line 180
    .local v0, "showCannedMessage":Z
    if-eqz v0, :cond_57

    .line 181
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mKeyboardUp:Z

    if-eqz v1, :cond_25

    .line 184
    iget v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessagesContainerHeight:I

    if-lez v1, :cond_17

    .line 185
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    :cond_17
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 188
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 190
    :cond_25
    iget v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessagesContainerHeight:I

    if-nez v1, :cond_39

    .line 192
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 194
    :cond_39
    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->setCannedMsgListViewVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    new-instance v2, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$4;-><init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 209
    :goto_46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->updateCannedMsgButtonColor()V

    .line 210
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgPlus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v0, :cond_5d

    const/high16 v1, -0x3dcc0000

    :goto_53
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 211
    return v0

    .line 207
    :cond_57
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->setCannedMsgListViewVisibility(I)V

    goto :goto_46

    .line 210
    :cond_5d
    const/high16 v1, 0x42340000

    goto :goto_53
.end method
