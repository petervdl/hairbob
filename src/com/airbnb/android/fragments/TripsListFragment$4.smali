.class Lcom/airbnb/android/fragments/TripsListFragment$4;
.super Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;
.source "TripsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TripsListFragment;->createHeaderAdapter(Ljava/util/List;I)Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TripsListFragment;

.field final synthetic val$headerTitle:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TripsListFragment;Landroid/widget/BaseAdapter;I)V
    .registers 4
    .param p2, "x0"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripsListFragment$4;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    iput p3, p0, Lcom/airbnb/android/fragments/TripsListFragment$4;->val$headerTitle:I

    invoke-direct {p0, p2}, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;-><init>(Landroid/widget/BaseAdapter;)V

    return-void
.end method


# virtual methods
.method public getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 260
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 261
    .local v0, "context":Landroid/content/Context;
    if-nez p1, :cond_12

    .line 262
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301e0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 264
    :cond_12
    const v1, 0x7f080512

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/airbnb/android/fragments/TripsListFragment$4;->val$headerTitle:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 266
    return-object p1
.end method