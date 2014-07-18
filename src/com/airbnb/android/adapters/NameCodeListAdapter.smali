.class public Lcom/airbnb/android/adapters/NameCodeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NameCodeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/NameCodeListAdapter$Cell;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field nameCodeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/NameCodeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/NameCodeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "nameCodeItems":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/NameCodeItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/airbnb/android/adapters/NameCodeListAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/airbnb/android/adapters/NameCodeListAdapter;->nameCodeItems:Ljava/util/List;

    .line 30
    iget-object v0, p0, Lcom/airbnb/android/adapters/NameCodeListAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/airbnb/android/adapters/NameCodeListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/adapters/NameCodeListAdapter;->nameCodeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "arg0"    # I

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    move-object v1, p2

    .line 59
    .local v1, "cellView":Landroid/view/View;
    iget-object v3, p0, Lcom/airbnb/android/adapters/NameCodeListAdapter;->nameCodeItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/NameCodeItem;

    .line 61
    .local v2, "nameCodeItem":Lcom/airbnb/android/models/NameCodeItem;
    if-nez p2, :cond_32

    .line 62
    new-instance v0, Lcom/airbnb/android/adapters/NameCodeListAdapter$Cell;

    invoke-direct {v0}, Lcom/airbnb/android/adapters/NameCodeListAdapter$Cell;-><init>()V

    .line 63
    .local v0, "cell":Lcom/airbnb/android/adapters/NameCodeListAdapter$Cell;
    iget-object v3, p0, Lcom/airbnb/android/adapters/NameCodeListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x1090003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/airbnb/android/adapters/NameCodeListAdapter$Cell;->textView:Landroid/widget/TextView;

    .line 65
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_28
    iget-object v3, v0, Lcom/airbnb/android/adapters/NameCodeListAdapter$Cell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-object v1

    .line 67
    .end local v0    # "cell":Lcom/airbnb/android/adapters/NameCodeListAdapter$Cell;
    :cond_32
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/NameCodeListAdapter$Cell;

    .restart local v0    # "cell":Lcom/airbnb/android/adapters/NameCodeListAdapter$Cell;
    goto :goto_28
.end method
