.class Lcom/airbnb/android/fragments/TripChargesFragment$4;
.super Ljava/lang/Object;
.source "TripChargesFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TripChargesFragment;->setupListView(Lcom/airbnb/android/views/LinearListView;Ljava/util/List;)Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TripChargesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TripChargesFragment;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripChargesFragment$4;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 10
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 233
    invoke-static {}, Lcom/airbnb/android/analytics/TripChargesAnalytics;->trackTripChargesInvoiceItemClick()V

    .line 235
    invoke-virtual {p1}, Lcom/airbnb/android/views/LinearListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;

    invoke-virtual {v2, p3}, Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/TripInvoiceItem;

    .line 236
    .local v1, "tripInvoiceItem":Lcom/airbnb/android/models/TripInvoiceItem;
    invoke-static {v1}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->newInstance(Lcom/airbnb/android/models/TripInvoiceItem;)Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    move-result-object v0

    .line 237
    .local v0, "fragment":Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripChargesFragment$4;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    const/16 v3, 0x3ea

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 238
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripChargesFragment$4;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/TripChargesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 239
    return-void
.end method
