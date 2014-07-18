.class public Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "ArrivalRatingDialogFragment.java"


# static fields
.field private static final CONFIRMATION_CODE:Ljava/lang/String; = "arrival_plan_id"

.field public static final REQUEST_CODE_RATING_DIALOG:I = 0x3f3

.field private static final RESERVATION_ID:Ljava/lang/String; = "reservation_id"


# instance fields
.field mFeedbackEditText:Landroid/widget/EditText;

.field mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

.field mRatingStars:Landroid/widget/RatingBar;

.field mSubmitButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method public static newInstanceForConfirmationCode(Ljava/lang/String;J)Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;
    .registers 6
    .param p0, "confirmationCode"    # Ljava/lang/String;
    .param p1, "reservationId"    # J

    .prologue
    .line 36
    new-instance v1, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v2, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    invoke-direct {v2}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withCustomLayout()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    .line 38
    .local v0, "dialogFragment":Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "arrival_plan_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f030040

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "content":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 51
    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mRatingStars:Landroid/widget/RatingBar;

    new-instance v3, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 58
    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->setCustomView(Landroid/view/View;)V

    .line 93
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/ZenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    return-void
.end method
