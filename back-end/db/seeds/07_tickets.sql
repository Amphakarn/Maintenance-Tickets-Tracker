-- CREATE TABLE IF NOT EXISTS "tickets" (
--     "data_id" INT,
--     "data_property_id" INT,
--     "data_creator_id" INT,
--     "data_employee_id" INT,
--     "data_maintenance_type" INT,
--     "data_ticket_status_id" INT,
--     "data_description" TEXT,
--     "data_estimated_cost" NUMERIC(5, 2),
--     "data_actual_cost" NUMERIC(5, 2),
--     "data_created_at" TEXT,
--     "data_completed_at" TEXT,
--     "data_image_path" TEXT
-- );

/*  Change creator_id to match property_id */
INSERT INTO "tickets" (property_id, creator_id, employee_id, maintenance_type_id, ticket_status_id, description , estimated_cost, actual_cost , created_at, image_path)
VALUES
    /*
    (2,3,13,2,2,'Enim autem nulla rerum voluptas amet et quidem. Quidem magni autem nobis nesciunt rem consequuntur reprehenderit maxime eos. Voluptatem cum corporis assumenda repudiandae consectetur aliquid repudiandae dolores. Ipsa sequi velit unde eaque nam et nesciunt. Dolorem qui velit.',364.92,819.02,'2018-05-13T15:55:16.824Z','http://placeimg.com/640/480/business'),
    (2,7,8,1,1,'Voluptate harum nesciunt sed nesciunt eum. Distinctio odio dolore dolorem et nostrum dolores. Perspiciatis soluta quia aut illum dolorem quidem unde tempora non.',176.91,820.06,'2019-08-09T16:05:26.537Z','http://placeimg.com/640/480/business'),
    (4,7,14,2,2,'Et eius minus nemo et exercitationem. Saepe sapiente non quia autem et enim et enim. Perferendis sapiente amet sunt provident voluptate aliquam quae nulla reprehenderit. Neque voluptas harum.',12.53,127.94,'2019-02-05T17:56:13.293Z','http://placeimg.com/640/480/business'),
    (4,3,11,3,2,'Quia voluptas laborum ea. Odit at ratione in ipsa esse necessitatibus itaque illo. A eos occaecati. Aperiam recusandae et voluptatibus. Maxime minus at sunt nemo alias. Tenetur quam modi qui quos deleniti quis consectetur.',188.54,729.20,'2017-10-15T21:09:45.751Z','http://placeimg.com/640/480/business'),
    (2,6,14,3,1,'Corporis suscipit laborum saepe ut deleniti ad aspernatur. Consequuntur vitae pariatur quia necessitatibus. Adipisci vitae ut non sint eum consequuntur autem dignissimos. Atque aut consequatur et ut iusto dolores accusamus. Ducimus ut aut tempora saepe dolores minima.',986.12,236.63,'2019-09-14T04:32:39.133Z','http://placeimg.com/640/480/business'),
    (2,5,8,3,2,'Voluptatem consequatur a quia. Voluptates dolore sapiente. Dolorum facilis ea laborum excepturi sit. Magni quia vero vero aperiam pariatur nihil possimus quos assumenda. Velit cupiditate corrupti ut tempora cumque dignissimos. Alias odit velit.',215.01,995.99,'2017-12-31T03:20:43.233Z','http://placeimg.com/640/480/business'),
    (4,5,10,2,2,'Eligendi et officia nam est cum et deserunt et. Sed mollitia est voluptatem praesentium aperiam cumque. Voluptate ab itaque nisi repellendus molestiae. Voluptatem et sequi deserunt omnis.',458.01,21.23,'2018-08-29T19:42:04.892Z','http://placeimg.com/640/480/business'),
    (2,6,12,2,1,'Recusandae dolorum a reprehenderit voluptatem voluptates sapiente. Voluptate voluptatem quasi modi veritatis quia. Maiores officiis adipisci similique animi at incidunt cupiditate dicta. Eum ea quia soluta. Iusto aliquam dolores nam consequuntur rerum ea autem ut. Libero omnis dicta ea laudantium.',873.77,672.69,'2019-06-22T21:36:04.706Z','http://placeimg.com/640/480/business'),
    (3,3,8,3,1,'Expedita sint in consectetur deserunt. Ducimus ut voluptatum optio quisquam. Et expedita commodi neque. Consectetur eligendi est aut sed facere aut dolore.',726.71,921.53,'2017-06-18T02:44:45.689Z','http://placeimg.com/640/480/business'),
    (4,4,8,2,2,'Et est laborum qui ea. Qui exercitationem sed odio reiciendis. Molestias eveniet repellat velit illo nisi dolor nihil beatae qui. Minima iure vero. Mollitia culpa incidunt et. Iure vero voluptas rerum praesentium.',977.93,615.17,'2018-08-17T20:58:20.456Z','http://placeimg.com/640/480/business'),
    (1,3,12,1,1,'Minima ipsum repellat culpa. Molestias dolorem aut cumque expedita non minus ipsam vel. Cum velit placeat molestiae ut autem similique voluptates minus.',852.42,745.29,'2020-02-02T09:31:57.074Z','http://placeimg.com/640/480/business'),
    (2,4,12,1,1,'Soluta vero sed et quo numquam. In consectetur eius libero laudantium fugit adipisci blanditiis id voluptate. Laudantium inventore est ducimus qui qui atque explicabo et at. Porro earum numquam. Repellat laborum est qui voluptatum. Ea dolor maiores exercitationem sed tenetur occaecati corporis consequatur eos.',514.23,964.57,'2019-07-02T18:37:50.626Z','http://placeimg.com/640/480/business'),
    (4,5,9,2,1,'Veritatis consequatur dolorem. Reiciendis sit et libero ut rem molestiae voluptas. Beatae et vero quis eaque aperiam asperiores. Quas unde beatae nemo laudantium provident doloribus fugit.',881.72,184.78,'2018-09-27T23:05:29.255Z','http://placeimg.com/640/480/business'),
    (1,5,12,2,2,'Eos similique similique. Sit rerum doloribus esse temporibus reprehenderit voluptatum similique et. Perspiciatis sint rerum eum nisi dolorum qui tempora facilis id. Illo dolorum facilis maiores consectetur similique.',733.16,583.37,'2018-09-15T22:32:22.877Z','http://placeimg.com/640/480/business'),
    (2,7,11,2,1,'Sed consequuntur dolorem. Omnis porro et molestiae architecto. Laborum voluptatem beatae iusto ab nemo. Et odio omnis consequatur officiis animi magni aut vero cupiditate. Accusantium animi explicabo.',761.69,180.99,'2018-01-26T21:10:51.056Z','http://placeimg.com/640/480/business'),
    (1,3,9,1,2,'Explicabo voluptatem deleniti incidunt et consequatur eius at ipsum sunt. Id labore facilis eos et aliquid ut minus totam omnis. Omnis iusto provident corrupti eius enim. Nemo molestias ipsum libero dolorum et est itaque dolorum.',60.66,855.76,'2017-10-28T03:31:16.114Z','http://placeimg.com/640/480/business'),
    (1,3,12,3,1,'Qui expedita aliquid cupiditate. Quam qui voluptate odit ipsam voluptatem voluptatem provident expedita. Quaerat maxime laborum natus.',971.43,429.98,'2018-06-06T21:35:21.382Z','http://placeimg.com/640/480/business'),
    (2,5,12,1,1,'Omnis at amet asperiores. Quo et alias quisquam. Assumenda nobis quaerat enim earum sint dolores itaque. Ad libero commodi voluptas voluptas. Et at dolor architecto voluptate.',336.50,248.86,'2020-01-01T14:20:33.037Z','http://placeimg.com/640/480/business'),
    (4,3,9,2,1,'Ullam repellat occaecati minima numquam numquam fugiat. Earum ut modi assumenda. Aut voluptatem velit molestiae id quia recusandae.',641.17,9.98,'2017-03-22T17:17:33.289Z','http://placeimg.com/640/480/business'),
    (2,6,14,2,1,'Molestiae dolorem est vitae delectus recusandae quo quis. Doloremque voluptas quia harum ab dolor deserunt. Et est iusto dolorum.',916.78,942.41,'2019-02-28T01:04:48.340Z','http://placeimg.com/640/480/business'),
    (3,5,14,1,1,'Illum quae porro. Laboriosam atque iure eos veniam. Laudantium est eligendi aut id. Ea distinctio perspiciatis qui quia tempora consequatur officia nesciunt deleniti.',211.38,840.60,'2019-06-01T17:09:30.564Z','http://placeimg.com/640/480/business'),
    (4,4,9,1,2,'Laudantium perferendis occaecati sint. Ullam eaque omnis dicta eos voluptatem. Labore quidem sit quaerat exercitationem accusantium. Perspiciatis facilis magnam aut.',855.79,528.98,'2017-06-25T21:09:42.316Z','http://placeimg.com/640/480/business'),
    (2,3,13,3,1,'Error natus non nostrum minus a culpa. Vel voluptatem facilis dolorum. Occaecati qui aut blanditiis et quia. Quas itaque voluptatem illum aut excepturi incidunt aperiam dignissimos. Veritatis repellat voluptatum eum.',635.04,818.91,'2019-05-24T14:09:12.375Z','http://placeimg.com/640/480/business'),
    (2,7,14,1,2,'Minima ea quo. Vero nostrum sequi et. Beatae aspernatur voluptas voluptate quam cupiditate voluptas qui praesentium soluta. Mollitia dolor porro aspernatur. Alias officiis et quisquam sunt.',47.86,104.76,'2019-06-29T05:32:40.910Z','http://placeimg.com/640/480/business'),
    (1,5,10,2,2,'Cum ad consequuntur qui. Dolorem doloribus quia. Explicabo ipsam omnis enim voluptas. Dolor soluta corporis explicabo voluptas. Nam illo officia sit doloremque aspernatur beatae fugiat corrupti. Nam assumenda alias perspiciatis quam ea voluptates voluptas aut aut.',307.29,776.40,'2017-02-02T00:04:21.408Z','http://placeimg.com/640/480/business'),
    (3,3,14,1,2,'Cumque vitae est expedita ratione sapiente ducimus vitae occaecati. Ut aut a nihil ut totam ad. Laudantium dolore soluta in nobis. Qui id atque dolorum eaque aspernatur.',819.61,469.17,'2018-07-28T18:56:43.798Z','http://placeimg.com/640/480/business'),
    (1,5,8,2,2,'Quibusdam sed eos dolorum unde. Maiores voluptatum quod voluptatum quia ea iste aut quia. Eum ut omnis quia repellendus impedit nostrum. Necessitatibus similique voluptatem delectus aut libero tempora.',672.12,12.48,'2020-01-08T12:22:49.778Z','http://placeimg.com/640/480/business'),
    (3,4,9,3,1,'Hic ullam et vitae sapiente ut laborum similique sit. Officia at quis quo aut. Sed dolor quis a est. Quidem veniam in aliquam sunt explicabo. Libero cupiditate qui qui quis reiciendis eaque maiores.',868.88,932.17,'2017-05-05T07:51:06.156Z','http://placeimg.com/640/480/business'),
    (2,7,8,2,2,'Quidem architecto est. Impedit exercitationem molestiae velit id. Quam maiores voluptatem earum doloremque aut. Excepturi eius nisi. Autem ea temporibus eos ea aut nostrum earum. Dolorem officia ea cupiditate officiis dolore.',119.38,639.49,'2018-07-26T06:59:22.796Z','http://placeimg.com/640/480/business'),
    (1,5,14,2,1,'Eos velit fuga. Necessitatibus aspernatur quos ut porro ut ea quisquam. Provident sequi distinctio est sint in. Nobis quas consequuntur tempore. Illum earum consectetur. Nam dolores autem beatae iure.',41.11,692.01,'2018-10-15T08:12:31.444Z','http://placeimg.com/640/480/business'),
    (4,3,12,1,1,'Quidem vero laboriosam doloribus voluptas amet ut quia ratione. Autem officiis iusto maiores quia vel libero ipsa quisquam. Perspiciatis est non deleniti minima. Libero illum esse ut aspernatur nesciunt recusandae beatae sunt non. Nobis dolor aspernatur dolorem.',647.36,218.29,'2017-01-11T22:44:36.972Z','http://placeimg.com/640/480/business'),
    (1,7,8,2,2,'Minus quo corrupti dolorem et temporibus fugit ipsum sit est. Est provident iure doloremque omnis autem illo dolorum tenetur. Occaecati rerum eveniet laudantium dolores qui explicabo natus qui nostrum. Neque fuga et dolorem.',934.94,184.82,'2019-09-20T10:01:13.591Z','http://placeimg.com/640/480/business'),
    (1,5,10,1,1,'Aut ut commodi quia quidem. Ut error earum perspiciatis commodi qui et. Molestiae est numquam magnam et soluta nemo.',775.57,299.71,'2018-03-08T17:06:09.415Z','http://placeimg.com/640/480/business'),
    (1,6,14,1,1,'Incidunt ab sunt facilis aut eum in vel est. Blanditiis voluptas minima tenetur ducimus quidem est occaecati totam est. Neque et eligendi et odio facere deleniti. Et quibusdam ut facere quibusdam repellendus et. Qui nostrum et doloremque eligendi reprehenderit et voluptate et.',434.05,23.31,'2019-06-20T01:03:48.010Z','http://placeimg.com/640/480/business'),
    (2,3,10,1,1,'Ea recusandae non. Consequatur aperiam est. Itaque odit veritatis aut qui unde explicabo.',858.75,436.04,'2018-02-04T01:24:14.085Z','http://placeimg.com/640/480/business'),
    (3,3,8,2,2,'Eligendi ducimus quo quasi excepturi autem nihil sint. Qui illo omnis nesciunt ex. Maxime est tempora voluptas sed iste id repellendus ut. Provident in in tempore nulla commodi quisquam.',232.70,734.17,'2018-07-28T05:45:51.932Z','http://placeimg.com/640/480/business'),
    (4,3,13,3,2,'Quod incidunt quisquam. Deserunt ab velit voluptas est. Est quaerat suscipit. Repellat eaque voluptatum et. Doloremque commodi asperiores quibusdam distinctio id dicta deserunt perferendis.',439.82,56.11,'2019-05-16T13:20:25.458Z','http://placeimg.com/640/480/business'),
    (2,7,9,1,2,'Sint deserunt dicta quis. Consequatur vitae excepturi et. Illo mollitia consequatur distinctio. Quia nihil minus omnis. Voluptas sed molestias blanditiis.',363.08,967.74,'2017-05-25T01:27:52.589Z','http://placeimg.com/640/480/business'),
    (3,3,14,2,1,'Ut earum nam dolores. Sapiente et qui velit. Debitis est ipsam quia animi est non.',285.20,554.86,'2019-09-08T04:00:34.631Z','http://placeimg.com/640/480/business'),
    (4,7,12,3,1,'Cupiditate vel sapiente voluptatum est veniam et numquam et rerum. Exercitationem vel consectetur odit saepe sit error recusandae. Qui consequatur sapiente velit placeat voluptatem consequatur libero aliquam perferendis.',934.83,806.63,'2019-03-19T14:11:46.008Z','http://placeimg.com/640/480/business'),
    (4,4,8,2,1,'Voluptatem commodi rem. Quis nisi quod sit placeat ipsum. Eveniet tenetur ipsa similique provident. Sit incidunt saepe dolores harum exercitationem omnis omnis. Id qui similique ut quo distinctio ut.',971.90,483.46,'2019-11-11T22:08:24.285Z','http://placeimg.com/640/480/business'),
    (2,4,9,2,2,'Assumenda aut non. Ad magnam exercitationem commodi ut porro. Totam quo rerum accusantium sed laboriosam officia dolorem mollitia. Harum ab veritatis aspernatur odio enim. Blanditiis totam ut facilis ut asperiores voluptas. Quia iste autem dolorem dolorum delectus laboriosam quia non.',288.04,824.71,'2019-10-09T12:04:53.747Z','http://placeimg.com/640/480/business'),
    (2,7,14,3,1,'Quia ea adipisci qui voluptas. Dolorem minus et quia eos quis odit et eum quis. Aut eos quo eum.',99.83,949.17,'2019-12-22T21:36:40.776Z','http://placeimg.com/640/480/business'),
    (3,6,8,1,2,'Praesentium delectus quia dolor repudiandae. Quia qui et aut ex voluptates optio et molestiae temporibus. Suscipit inventore est quibusdam quos cum fugiat nisi libero fugit. Molestiae et in ducimus.',655.24,731.17,'2018-07-19T09:42:59.781Z','http://placeimg.com/640/480/business'),
    (3,6,14,1,1,'Natus eaque possimus qui rem quidem quia aut eos dolorum. Excepturi sed error. Asperiores commodi porro numquam. Eos eveniet et et atque error.',680.91,246.60,'2018-07-11T04:36:33.046Z','http://placeimg.com/640/480/business'),
    (1,6,12,3,2,'Optio dolores itaque corporis in neque dolorem. Ad est error dolorem fugit quos cupiditate dignissimos eaque. Expedita nihil sunt rerum consequatur doloribus quo fugit et architecto. Est corrupti qui vel quas illo maiores. Pariatur totam quis quia quasi inventore magni omnis quidem repellendus.',177.07,518.25,'2019-10-30T22:07:37.473Z','http://placeimg.com/640/480/business'),
    (1,4,12,3,1,'Aut vitae minus sequi aut illum ex officia rerum. Qui veritatis commodi fuga earum. Consequatur enim tempora voluptatum. Atque adipisci placeat sunt adipisci doloribus officiis qui sint. Est officia nihil suscipit quo sit quis sint.',265.31,370.10,'2018-05-28T06:10:43.291Z','http://placeimg.com/640/480/business'),
    (2,4,9,1,1,'Mollitia et mollitia et optio odit repellat voluptas. Maiores hic quis rerum quasi iste repellat vitae aliquam. Animi quod exercitationem non quis accusantium expedita culpa ea laborum. Excepturi nostrum nemo delectus.',80.99,117.94,'2019-11-13T01:49:20.631Z','http://placeimg.com/640/480/business'),
    (1,3,13,1,2,'Aspernatur neque perspiciatis minima alias voluptates dolore. Ipsam eaque odit. Tenetur sit id aperiam eos asperiores ipsam aliquid voluptate. Quae soluta deleniti.',163.09,728.12,'2017-03-10T08:35:08.732Z','http://placeimg.com/640/480/business'),
    (2,4,11,1,2,'Et ut quos temporibus quisquam sit incidunt. Provident molestiae quis. Id distinctio magni molestiae porro repudiandae qui nobis voluptas.',957.84,674.32,'2018-11-15T03:04:12.446Z','http://placeimg.com/640/480/business'),
    (4,5,11,1,1,'Nemo id et est officiis aliquid dolore adipisci esse. Occaecati quos quaerat unde et commodi culpa sunt sint expedita. Aspernatur ut aut cum eaque modi. Minima porro repellat nobis facere veritatis tempore nam perferendis tenetur. Doloribus est accusantium. Autem occaecati eos distinctio eos ut distinctio quia.',216.54,615.00,'2017-05-17T23:10:21.274Z','http://placeimg.com/640/480/business'),
    (3,5,11,1,1,'Id ratione ab dignissimos saepe quam exercitationem sed vitae rerum. Commodi tempora asperiores ut similique. Ea eaque cumque pariatur. Quia quo accusamus quia. Fugit aut enim ut perferendis. Ea necessitatibus distinctio dolores repudiandae qui.',513.07,33.30,'2017-09-27T01:40:48.578Z','http://placeimg.com/640/480/business'),
    (1,3,11,2,1,'Rerum labore quia est ullam non qui sed laboriosam. Libero ut esse reiciendis enim occaecati accusantium. Aliquam veritatis veritatis nobis architecto aut. Commodi temporibus qui debitis ut sit architecto. Non quia nam culpa vel veritatis omnis voluptas et. Debitis reiciendis dolores velit eaque veritatis.',459.58,367.66,'2018-01-28T00:13:32.481Z','http://placeimg.com/640/480/business'),
    (2,6,13,1,2,'Velit voluptatem omnis nesciunt quia. Dolorum numquam aut eos. Praesentium optio neque est voluptas veniam ut tenetur.',192.96,789.83,'2017-06-19T18:10:29.913Z','http://placeimg.com/640/480/business'),
    (3,7,10,2,1,'Saepe quod nesciunt libero ad. Veritatis in sit repudiandae laborum facere eligendi. Natus doloribus autem reprehenderit tempora. Esse libero quaerat aut aut laboriosam qui laudantium. Molestiae voluptas quia atque quae animi. Inventore repellat tempore sed labore expedita.',392.60,408.58,'2017-10-25T15:05:49.237Z','http://placeimg.com/640/480/business'),
    (2,6,9,3,1,'Distinctio eius quos architecto optio perspiciatis alias nihil. Ipsa nihil soluta quos ut ullam ducimus fugit voluptatem illo. Quaerat ratione minus quaerat eum. Aut ut animi laboriosam. Quidem at qui quo fugit minus aut et quis sed. Laborum debitis et quibusdam adipisci est non saepe alias placeat.',699.68,233.99,'2019-11-30T01:34:28.030Z','http://placeimg.com/640/480/business'),
    (1,6,10,2,1,'Temporibus ut qui quod ipsa voluptas possimus quis quidem aspernatur. Aut assumenda iste doloremque eveniet et optio impedit amet. Laboriosam non illum sint quis. Dolorem praesentium aliquid ut voluptate iure aliquid. Aperiam ea aliquam id.',132.26,277.30,'2019-12-08T09:02:01.653Z','http://placeimg.com/640/480/business'),
    (2,5,11,3,1,'Iusto in quaerat consequuntur voluptate deleniti eaque omnis exercitationem dignissimos. Iusto aliquam molestiae provident consectetur sed fuga corrupti laudantium consectetur. Saepe odio deleniti est ducimus saepe aperiam ipsum. Dolore laborum facere dolor quia numquam et.',969.69,20.68,'2017-02-04T19:49:45.951Z','http://placeimg.com/640/480/business'),
    (3,4,11,1,1,'Laboriosam nisi veniam ad aperiam placeat officia doloribus. Animi alias voluptatem omnis sit. Deserunt qui aut. Qui ab magni veritatis similique voluptatibus. Tempore quidem nihil repudiandae saepe laborum quia molestias. Expedita a impedit nobis aut est.',411.49,40.93,'2018-03-10T19:10:17.627Z','http://placeimg.com/640/480/business'),
    (1,6,12,1,2,'Nihil doloremque esse delectus. Adipisci consequuntur eius enim vero aperiam. Dolorum et debitis odio libero eum quisquam et ut a.',809.34,968.01,'2019-01-30T08:53:12.963Z','http://placeimg.com/640/480/business'),
    (3,5,14,2,1,'Qui ratione dolorem. Nam voluptatibus blanditiis accusamus aliquam qui hic. Beatae quidem ut praesentium ab est dicta. Quas rerum earum facilis. Ea non asperiores fugiat enim consequatur ipsum.',761.06,617.80,'2018-12-22T04:35:53.442Z','http://placeimg.com/640/480/business'),
    */

    (11,4,NULL,1,1,'Ticket1 ------ nisi veniam ad aperiam placeat officia doloribus. Animi alias voluptatem omnis sit. Deserunt qui aut. Qui ab magni veritatis similique voluptatibus. Tempore quidem nihil repudiandae saepe laborum quia molestias. Expedita a impedit nobis aut est.',411.49,40.93,'2018-03-10T19:10:17.627Z','http://placeimg.com/640/480/business'),
    (11,6,NULL,1,1,'Ticket2 ----- doloremque esse delectus. Adipisci consequuntur eius enim vero aperiam. Dolorum et debitis odio libero eum quisquam et ut a.',809.34,NULL,'2019-01-30T08:53:12.963Z','http://placeimg.com/640/480/business'),
    (11,4,NULL,1,1,'Ticket3 ------ nisi veniam ad aperiam placeat officia doloribus. Animi alias voluptatem omnis sit. Deserunt qui aut. Qui ab magni veritatis similique voluptatibus. Tempore quidem nihil repudiandae saepe laborum quia molestias. Expedita a impedit nobis aut est.',411.49,40.93,'2018-03-10T19:10:17.627Z','http://placeimg.com/640/480/business'),
    (11,6,NULL,1,1,'Ticket4 ----- doloremque esse delectus. Adipisci consequuntur eius enim vero aperiam. Dolorum et debitis odio libero eum quisquam et ut a.',809.34,NULL,'2019-01-30T08:53:12.963Z','http://placeimg.com/640/480/business'),
    (11,4,NULL,1,1,'Ticket5 ------ nisi veniam ad aperiam placeat officia doloribus. Animi alias voluptatem omnis sit. Deserunt qui aut. Qui ab magni veritatis similique voluptatibus. Tempore quidem nihil repudiandae saepe laborum quia molestias. Expedita a impedit nobis aut est.',411.49,40.93,'2018-03-10T19:10:17.627Z','http://placeimg.com/640/480/business'),
    (11,4,NULL,1,1,'Ticket6 ------ nisi veniam ad aperiam placeat officia doloribus. Animi alias voluptatem omnis sit. Deserunt qui aut. Qui ab magni veritatis similique voluptatibus. Tempore quidem nihil repudiandae saepe laborum quia molestias. Expedita a impedit nobis aut est.',411.49,40.93,'2018-03-10T19:10:17.627Z','http://placeimg.com/640/480/business'),
    (11,6,NULL,1,1,'Ticket7 ----- doloremque esse delectus. Adipisci consequuntur eius enim vero aperiam. Dolorum et debitis odio libero eum quisquam et ut a.',809.34,NULL,'2019-01-30T08:53:12.963Z','http://placeimg.com/640/480/business'),
    (11,4,NULL,1,1,'Ticket8 ------ nisi veniam ad aperiam placeat officia doloribus. Animi alias voluptatem omnis sit. Deserunt qui aut. Qui ab magni veritatis similique voluptatibus. Tempore quidem nihil repudiandae saepe laborum quia molestias. Expedita a impedit nobis aut est.',411.49,40.93,'2018-03-10T19:10:17.627Z','http://placeimg.com/640/480/business'),
    (11,4,24,1,2,'Ticket8.1 ------ nisi veniam ad aperiam placeat officia doloribus. Animi alias voluptatem omnis sit. Deserunt qui aut. Qui ab magni veritatis similique voluptatibus. Tempore quidem nihil repudiandae saepe laborum quia molestias. Expedita a impedit nobis aut est.',411.49,40.93,'2018-03-10T19:10:17.627Z','http://placeimg.com/640/480/business'),
    (11,6,24,1,2,'Ticket8.2 ----- doloremque esse delectus. Adipisci consequuntur eius enim vero aperiam. Dolorum et debitis odio libero eum quisquam et ut a.',809.34,NULL,'2019-01-30T08:53:12.963Z','http://placeimg.com/640/480/business'),
    (11,4,24,1,2,'Ticket8.3 ------ nisi veniam ad aperiam placeat officia doloribus. Animi alias voluptatem omnis sit. Deserunt qui aut. Qui ab magni veritatis similique voluptatibus. Tempore quidem nihil repudiandae saepe laborum quia molestias. Expedita a impedit nobis aut est.',411.49,40.93,'2018-03-10T19:10:17.627Z','http://placeimg.com/640/480/business'),
    

    (12,5,26,2,1,'Ticket9 ----- ratione dolorem. Nam voluptatibus blanditiis accusamus aliquam qui hic. Beatae quidem ut praesentium ab est dicta. Quas rerum earum facilis. Ea non asperiores fugiat enim consequatur ipsum.',761.06,NULL,'2018-12-22T04:35:53.442Z','http://placeimg.com/640/480/business'),
    (12,6,25,1,2,'Ticket10 ----- doloremque esse delectus. Adipisci consequuntur eius enim vero aperiam. Dolorum et debitis odio libero eum quisquam et ut a.',809.34,NULL,'2019-01-30T08:53:12.963Z','http://placeimg.com/640/480/business'),
    (12,5,24,2,1,'Ticket11----- ratione dolorem. Nam voluptatibus blanditiis accusamus aliquam qui hic. Beatae quidem ut praesentium ab est dicta. Quas rerum earum facilis. Ea non asperiores fugiat enim consequatur ipsum.',761.06,NULL,'2018-12-22T04:35:53.442Z','http://placeimg.com/640/480/business'),
    (11,4,25,1,2,'Ticket12 ------ nisi veniam ad aperiam placeat officia doloribus. Animi alias voluptatem omnis sit. Deserunt qui aut. Qui ab magni veritatis similique voluptatibus. Tempore quidem nihil repudiandae saepe laborum quia molestias. Expedita a impedit nobis aut est.',411.49,40.93,'2018-03-10T19:10:17.627Z','http://placeimg.com/640/480/business'),
    (11,6,26,1,2,'Ticket13 ----- doloremque esse delectus. Adipisci consequuntur eius enim vero aperiam. Dolorum et debitis odio libero eum quisquam et ut a.',809.34,968.01,'2019-01-30T08:53:12.963Z','http://placeimg.com/640/480/business'),
    (12,5,24,2,2,'Ticket14 ----- ratione dolorem. Nam voluptatibus blanditiis accusamus aliquam qui hic. Beatae quidem ut praesentium ab est dicta. Quas rerum earum facilis. Ea non asperiores fugiat enim consequatur ipsum.',761.06,617.80,'2018-12-22T04:35:53.442Z','http://placeimg.com/640/480/business'),
    (12,6,25,1,2,'Ticket15 ----- doloremque esse delectus. Adipisci consequuntur eius enim vero aperiam. Dolorum et debitis odio libero eum quisquam et ut a.',809.34,968.01,'2019-01-30T08:53:12.963Z','http://placeimg.com/640/480/business'),
    (12,5,24,2,3,'Ticket16 ----- ratione dolorem. Nam voluptatibus blanditiis accusamus aliquam qui hic. Beatae quidem ut praesentium ab est dicta. Quas rerum earum facilis. Ea non asperiores fugiat enim consequatur ipsum.',761.06,617.80,'2018-12-22T04:35:53.442Z','http://placeimg.com/640/480/business'),
    (12,5,24,2,2,'Ticket17 ----- ratione dolorem. Nam voluptatibus blanditiis accusamus aliquam qui hic. Beatae quidem ut praesentium ab est dicta. Quas rerum earum facilis. Ea non asperiores fugiat enim consequatur ipsum.',761.06,617.80,'2018-12-22T04:35:53.442Z','http://placeimg.com/640/480/business'),
    (12,6,24,1,2,'Ticket18 ----- doloremque esse delectus. Adipisci consequuntur eius enim vero aperiam. Dolorum et debitis odio libero eum quisquam et ut a.',809.34,968.01,'2019-01-30T08:53:12.963Z','http://placeimg.com/640/480/business'),
    (12,5,24,2,2,'Ticket19 ----- ratione dolorem. Nam voluptatibus blanditiis accusamus aliquam qui hic. Beatae quidem ut praesentium ab est dicta. Quas rerum earum facilis. Ea non asperiores fugiat enim consequatur ipsum.',761.06,617.80,'2018-12-22T04:35:53.442Z','http://placeimg.com/640/480/business'),
    (12,5,24,2,2,'Ticket20 ----- ratione dolorem. Nam voluptatibus blanditiis accusamus aliquam qui hic. Beatae quidem ut praesentium ab est dicta. Quas rerum earum facilis. Ea non asperiores fugiat enim consequatur ipsum.',761.06,617.80,'2018-12-22T04:35:53.442Z','http://placeimg.com/640/480/business')
   
