.class Lcom/airbnb/android/fragments/BookingDetailsFragment$9;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupSecurityDeposit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

.field final synthetic val$securityDepositAmount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 810
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$9;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$9;->val$securityDepositAmount:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 814
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e06d0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$9;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v2, 0x7f0e06d1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$9;->val$securityDepositAmount:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0563

    invoke-virtual {v0, v1, v5, v6}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$9;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 819
    return-void
.end method
