.class Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$2;
.super Ljava/lang/Object;
.source "AmenitiesFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 8
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J

    .prologue
    .line 116
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAmenitiesList:Ljava/util/List;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/AmenitiesItem;

    .line 117
    .local v0, "item":Lcom/airbnb/android/models/AmenitiesItem;
    invoke-virtual {v0}, Lcom/airbnb/android/models/AmenitiesItem;->toggleEnabled()V

    .line 118
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method
