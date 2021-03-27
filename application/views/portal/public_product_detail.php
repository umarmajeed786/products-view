<link href="<?= base_url('assets/styles') ?>/product-detail.css">
<title><?=$product->product_name?></title>
<div class="row" >
    <div class="container-fluid">
        <div class="row  justify-content-md-center">
            <div class="col-sm-3 mr-3 ml-3 first">
                <a href="<?= base_url('public-products') ?>">
                    <div class="icon">
                        <i>
                            <img src="<?= base_url('assets/images/') ?>bac115b8ddd.svg" alt="back">
                        </i>
                    </div>
                    <div class="text_back">
                        <?=$product->product_name?>
                    </div>
                </a>
            </div>
            <div class="col-sm-8 mr-3 ml-3"></div>
        </div>
        <div class="row justify-content-md-center main">
            <div class="col-sm-3  mr-3 ml-3">
            <div class="row">
                <div class="center_images">
                        <div class="img1">
                            <img src="<?= base_url('uploads/images/') . $product->cover_image ?>" class="mx-auto d-block"></div>
                        <div class="img2">
                            <img src="<?= base_url('uploads/images/') . $product->cover_image ?>" class="mx-auto"></div>
                    </div>
                <div class="row2">
                    <h6 class="text-right">Published: <?=date('M d Y', strtotime($product->date))?>
                    </h6>
                    <a target="_blank" href="<?=$product->competitor_store_url?>">
                    <button  class="btn btn-secondary btn-block">View Competitor Store</button>
                    </a>
                </div>
            </div>
            </div>
            <div class="col-sm-8 mr-3 ml-3 ">
                <div class="row justify-content-md-center">
                    <div class="col-sm items pt-4 pb-4 mr-4  mt-2 mb-2">
                        <div class="items_main">
                            <div class="left_sidebar">
                                <i><img src="<?= base_url('assets') ?>/images/box.svg" alt="Product"></i>
                            </div>
                            <div class="right">
                                <div class="sub_item1">
                                    <div class="sub_item1_left">
                                        <small>$<?=$product->cogs?></small>
                                    </div>
                                    <div class="sub_item1_right">
                                        <img src="<?= base_url('assets') ?>/images/info.svg" alt="">
                                    </div>
                                </div>
                                <div class="sub_item2">
                                    COGs
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm items pt-4 pb-4 mr-4 mt-2 mb-2 ">
                        <div class="items_main">
                            <div class="left_sidebar">
                                <i><img src="<?= base_url('assets') ?>/images/price.svg" alt="price"></i>
                            </div>
                            <div class="right">
                                <div class="sub_item1">
                                    <div class="sub_item1_left">
                                        <small>$<?=$product->price?></small>
                                    </div>
                                    <div class="sub_item1_right">
                                        <img src="<?= base_url('assets') ?>/images/info.svg" alt="">
                                    </div>
                                </div>
                                <div class="sub_item2">
                                    Price
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm items pt-4 pb-4 mt-2 mb-2 ">
                        <div class="items_main">
                            <div class="left_sidebar">
                                <i><img src="<?= base_url('assets') ?>/images/growning..svg" alt="Profit"></i>
                            </div>
                            <div class="right">
                                <div class="sub_item1">
                                    <div class="sub_item1_left">
                                        <small>$<?=$product->profit?></small>
                                    </div>
                                    <div class="sub_item1_right">
                                        <img src="<?= base_url('assets') ?>/images/info.svg" alt="">
                                    </div>
                                </div>
                                <div class="sub_item2">
                                    Profit
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row3 justify-content-md-center mt-4">
                    <div class="bg-gray-300 col-md-12  p-0">
                        <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Product Description</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Ad creative</a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Facebook targeting</a>
                            </div>
                        </nav>
                        <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                            <div class="tab-pane fade show active pl-3 pr-3" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <?=$product->description?>
                            </div>
                            <div class="tab-pane fade pl-3 pr-3" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <div class="row row_img justify-content-md-center mt-4">
                                    <div class="col-md-6  p-0">
                                        <div class="embed-responsive embed-responsive-16by9">
                                            <?php
                                            if($product->video_ad_1):
                                            ?>
                                            <video  class="embed-responsive-item" controls src="<?=$product->video_ad_1?>" allowfullscreen></video>
                                            <?php endif; ?>
                                        </div>
                                        <div class="links_p">
                                             <?php
                                            if($product->video_ad_1):
                                            ?>
                                            <p><a href="<?=$product->video_ad_1?>"> Video Ad #1</a></p>
                                             <?php endif; ?>
                                             <?php if($product->video_ad_2): ?>
                                            <p><a href="<?=$product->video_ad_2?>">Video Ad #2</a></p>
                                             <?php endif; ?>
                                        </div>
                                         <?php if($product->thumbnail): ?>
                                        <div class="col">
                                            <div class="thumbnail_image">
                                                <img src="<?=$product->thumbnail?>" alt="thumbnail" class="img-thumbnail">
                                            </div>
                                            <p>Thumbnail</p>
                                        </div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade pl-3 pr-3" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                <p><?=$product->facebook_targeting?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row_last  justify-content-md-center">
                    <div class="col-sm items pt-2 pb-2 mr-4 mt-2 mb-2">
                        <h6> Competitor Video </h6>
                        <div class="last_item_main">
                            <div class="item_last1">
                                <div class="item_last1_sub">
                                    <img src="<?= base_url('assets') ?>/images/like.svg" alt="like">
                                    <p><?=$product->likes?></p>
                                </div>
                                <div class="item_last2_sub">
                                    <img src="<?= base_url('assets') ?>/images/comments.svg" alt="commenst">
                                    <p><?=$product->comments?></p>
                                </div>
                                <div class="item_last3_sub">
                                    <img src="<?= base_url('assets') ?>/images/repost..svg" alt="repost">
                                    <p><?=$product->shares?></p>
                                </div>
                            </div>
                            <div class="item_last2"></div>
                            <?php if($product->competitor_ad): ?>
                            <a href="<?=$product->competitor_ad?>">View Competitors ad</a>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="col-sm items pt-2 pb-2 mr-4 mt-2 mb-2">
                        <h6> Aliexpress </h6>
                        <div class="last_item_main aliexpress">
                             <?php if($product->supplier_1): ?>
                            <div class="aliexpress_item1">
                                <a href="<?=$product->supplier_1?>">Supplier 1</a>
                                <p>Order=<?=$product->supplier_1_order?></p>
                            </div>
                             <?php endif; ?>
                            <?php if($product->supplier_2): ?>
                            <div class="aliexpress_item2">
                                <a href="<?=$product->supplier_2?>">Supplier 2</a>
                                <p>Order=<?=$product->supplier_2_order?></p>
                            </div>
                               <?php endif; ?>
                        </div>
                    </div>
                    <div class="col-sm items pt-2 pb-2  mt-2 mb-2">
                        <h6>Amazon</h6>
                        <div class="last_item_main amazon">
                            <?php if($product->product_1): ?>
                            <div class="amazon_item1">
                                <?php $a=0;for($i=1;$i<=$product->product_1_ratings;$i++){ $a++; ?>
                                <i class="fas fa-star"></i>
                                <?php } ?>
                                <?php for($i=$a;$i<5;$i++){  ?>
                                <i class="fas fa-star last"></i>
                                <?php } ?>
                                <p><?=$product->product_1_reviews?> Reviews</p>
                                <a href="<?=$product->product_1?>">View Product 1</a>

                            </div>
                            <?php endif; ?>
                            <?php if($product->product_2): ?>
                            <div class="amazon_item2">
                                <?php $a=0;for($i=1;$i<=$product->product_2_ratings;$i++){ $a++; ?>
                                <i class="fas fa-star"></i>
                                <?php } ?>
                                <?php for($i=$a;$i<5;$i++){  ?>
                                <i class="fas fa-star last"></i>
                                <?php } ?>
                                <p><?=$product->product_2_reviews?> Reviews</p>
                                <a href="<?=$product->product_2?>">View Product 2</a>

                            </div>
                            <?php endif; ?>
                        </div>
                    </div></div>
            </div>
        </div>
    </div>
</div>
