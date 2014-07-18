.class public Lcom/airbnb/android/utils/AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private wrapped:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ArrayAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper;, "Lcom/airbnb/android/utils/AdapterWrapper<TS;>;"
    .local p1, "wrapped":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TS;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    .line 21
    new-instance v0, Lcom/airbnb/android/utils/AdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/AdapterWrapper$1;-><init>(Lcom/airbnb/android/utils/AdapterWrapper;)V

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 32
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 77
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper;, "Lcom/airbnb/android/utils/AdapterWrapper<TS;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 50
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper;, "Lcom/airbnb/android/utils/AdapterWrapper<TS;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper;, "Lcom/airbnb/android/utils/AdapterWrapper<TS;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 114
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper;, "Lcom/airbnb/android/utils/AdapterWrapper<TS;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 69
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper;, "Lcom/airbnb/android/utils/AdapterWrapper<TS;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper;, "Lcom/airbnb/android/utils/AdapterWrapper<TS;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 58
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper;, "Lcom/airbnb/android/utils/AdapterWrapper<TS;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method protected getWrappedAdapter()Landroid/widget/ArrayAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper;, "Lcom/airbnb/android/utils/AdapterWrapper<TS;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 88
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper;, "Lcom/airbnb/android/utils/AdapterWrapper<TS;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper;->wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
