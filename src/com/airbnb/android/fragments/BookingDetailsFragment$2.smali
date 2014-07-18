.class Lcom/airbnb/android/fragments/BookingDetailsFragment$2;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 2

    .prologue
    .line 359
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 364
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$500(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/views/StickyButton;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/airbnb/android/utils/MiscUtils;->isKeyboardUp(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x8

    :goto_2a
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 366
    :cond_2d
    return-void

    .line 364
    :cond_2e
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButtonVisibility:I
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$400(Lcom/airbnb/android/fragments/BookingDetailsFragment;)I

    move-result v0

    goto :goto_2a
.end method
