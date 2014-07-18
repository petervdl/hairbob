.class public Lcom/airbnb/android/adapters/SocialConnectionsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SocialConnectionsAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/AirRequestFactory$Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/SocialConnectionsAdapter$1;,
        Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/SocialConnection;",
        ">;",
        "Lcom/airbnb/android/requests/AirRequestFactory$Consumer",
        "<",
        "Lcom/airbnb/android/models/SocialConnection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/SocialConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/SocialConnection;>;"
    const v0, 0x7f030164

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/airbnb/android/models/SocialConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "connections":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/airbnb/android/models/SocialConnection;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SocialConnectionsAdapter;->clear()V

    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/SocialConnection;

    .line 44
    .local v0, "connectoin":Lcom/airbnb/android/models/SocialConnection;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/adapters/SocialConnectionsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_7

    .line 46
    .end local v0    # "connectoin":Lcom/airbnb/android/models/SocialConnection;
    :cond_17
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SocialConnectionsAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    if-nez p2, :cond_31

    .line 27
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SocialConnectionsAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030164

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 28
    new-instance v1, Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/SocialConnectionsAdapter$1;)V

    .line 29
    .local v1, "viewHolder":Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;
    const v2, 0x7f0803ab

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/HaloImageView;

    iput-object v2, v1, Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;->connectionThumbnail:Lcom/airbnb/android/views/HaloImageView;

    .line 30
    const v2, 0x7f0803ac

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    .end local v1    # "viewHolder":Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;
    :cond_31
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;

    .line 34
    .restart local v1    # "viewHolder":Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SocialConnectionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/SocialConnection;

    .line 35
    .local v0, "connection":Lcom/airbnb/android/models/SocialConnection;
    iget-object v2, v1, Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SocialConnection;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v2, v1, Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;->connectionThumbnail:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SocialConnection;->getPicUrlSmall()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 37
    return-object p2
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
