.class Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter$1;
.super Ljava/lang/Object;
.source "PayoutListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;

.field final synthetic val$payoutMethod:Lcom/airbnb/android/models/PayoutInfo;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;Lcom/airbnb/android/models/PayoutInfo;)V
    .registers 3

    .prologue
    .line 192
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter$1;->this$1:Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;

    iput-object p2, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter$1;->val$payoutMethod:Lcom/airbnb/android/models/PayoutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter$1;->this$1:Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;

    iget-object v0, v0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter$1;->this$1:Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;

    # getter for: Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->mPayoutCount:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->access$300(Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter$1;->val$payoutMethod:Lcom/airbnb/android/models/PayoutInfo;

    # invokes: Lcom/airbnb/android/fragments/PayoutListFragment;->createActionListDialog(ILcom/airbnb/android/models/PayoutInfo;)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/PayoutListFragment;->access$400(Lcom/airbnb/android/fragments/PayoutListFragment;ILcom/airbnb/android/models/PayoutInfo;)V

    .line 197
    return-void
.end method
